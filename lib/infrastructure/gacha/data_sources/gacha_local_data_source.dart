import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/database/app_database.dart';
import '../dtos/gacha_dto.dart';
import '../dtos/gacha_record_dto.dart';

final gachaLocalDataSourceProvider = Provider.autoDispose<GachaLocalDataSource>(
  (ref) => GachaLocalDataSourceImpl(ref.watch(dbProvider)),
);

abstract class GachaLocalDataSource {
  Future<GachaDto> read(Uid uid, {required int page});

  Future<List<int>> save(GachaDto dto);

  Stream<List<GachaRecordDto>> watchRecords(Uid uid);
}

class GachaLocalDataSourceImpl implements GachaLocalDataSource {
  const GachaLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<GachaDto> read(Uid uid, {required int page}) =>
      _db.gachaRecordsDao.get(uid.getOrCrash(), page: page);

  @override
  Future<List<int>> save(GachaDto gacha) =>
      _db.gachaRecordsDao.replaceInto(gacha);

  @override
  Stream<List<GachaRecordDto>> watchRecords(Uid uid) =>
      _db.gachaRecordsDao.watchRecords(uid.getOrCrash());
}
