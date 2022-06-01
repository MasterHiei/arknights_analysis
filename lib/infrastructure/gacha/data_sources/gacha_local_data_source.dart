import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../../core/providers.dart';
import '../dtos/gacha_dto.dart';
import '../schemas/t_gacha_record.dart';

final gachaLocalDataSourceProvider = Provider.autoDispose<GachaLocalDataSource>(
  (ref) => GachaLocalDataSourceImpl(ref.watch(isarProvider)),
);

abstract class GachaLocalDataSource {
  Future<List<int>> save(GachaDto dto);
}

class GachaLocalDataSourceImpl implements GachaLocalDataSource {
  const GachaLocalDataSourceImpl(this._isar);

  final Isar _isar;

  @override
  Future<List<int>> save(GachaDto dto) => _isar.writeTxn(
        (isar) => isar.tGachaRecords.putAll(
          dto.list.map((record) => record.toSchema()).toList(),
          replaceOnConflict: true,
          saveLinks: true,
        ),
      );
}
