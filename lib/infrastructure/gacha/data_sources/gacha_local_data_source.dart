import 'package:dartx/dartx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../../core/constants/constants.dart';
import '../../../core/providers.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/common/dtos/pagination_dto.dart';
import '../dtos/gacha_char_dto.dart';
import '../dtos/gacha_dto.dart';
import '../dtos/gacha_record_dto.dart';
import '../schemas/t_gacha_record.dart';

final gachaLocalDataSourceProvider = Provider.autoDispose<GachaLocalDataSource>(
  (ref) => GachaLocalDataSourceImpl(ref.watch(isarProvider)),
);

abstract class GachaLocalDataSource {
  Future<GachaDto> read(Uid uid, {required int page});

  Future<List<int>> save(GachaDto dto);

  Future<List<GachaCharDto>> readChars(Uid uid);
}

class GachaLocalDataSourceImpl implements GachaLocalDataSource {
  const GachaLocalDataSourceImpl(this._isar);

  final Isar _isar;

  @override
  Future<GachaDto> read(Uid uid, {required int page}) async {
    final offset = (page - 1) * pageSize;
    final tRecords = await _isar.tGachaRecords
        .where()
        .filter()
        .uidEqualTo(uid.getOrCrash())
        .sortByTsDesc()
        .offset(offset)
        .limit(pageSize)
        .findAll();
    await Future.wait(tRecords.map((record) => record.chars.load()));
    final records = tRecords.map(GachaRecordDto.fromSchema).toList();

    final count = await _isar.tGachaRecords.count();
    final total = (count / pageSize).ceil();
    final pagination = PaginationDto(current: page, total: total);

    return GachaDto(list: records, pagination: pagination);
  }

  @override
  Future<List<int>> save(GachaDto dto) => _isar.writeTxn(
        (isar) => isar.tGachaRecords.putAll(
          dto.list.map((record) => record.toSchema()).toList(),
          replaceOnConflict: true,
          saveLinks: true,
        ),
      );

  @override
  Future<List<GachaCharDto>> readChars(Uid uid) async {
    final tRecords = await _isar.tGachaRecords
        .filter()
        .uidEqualTo(uid.getOrCrash())
        .findAll();
    await Future.wait(tRecords.map((record) => record.chars.load()));
    final records = tRecords.map(GachaRecordDto.fromSchema).toList();
    return records.map((record) => record.chars).toList().flatten();
  }
}
