import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/enums/gacha_rule_type.dart';
import '../../../core/providers.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/database/app_database.dart';
import '../dtos/gacha_dto.dart';
import '../dtos/gacha_record_dto.dart';

final gachaLocalDataSourceProvider = Provider.autoDispose<GachaLocalDataSource>(
  (ref) => GachaLocalDataSourceImpl(ref.watch(dbProvider)),
);

abstract class GachaLocalDataSource {
  Future<List<int>> save(GachaDto dto);

  Stream<List<GachaRecordDto>> watchRecords(
    Uid uid, {
    String? pool,
    GachaRuleType? ruleType,
  });

  Future<GachaDto> paginate(
    Uid uid, {
    required int page,
    String? pool,
  });
}

class GachaLocalDataSourceImpl implements GachaLocalDataSource {
  const GachaLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<List<int>> save(GachaDto gacha) =>
      _db.gachaRecordsDao.replaceInto(gacha);

  @override
  Stream<List<GachaRecordDto>> watchRecords(
    Uid uid, {
    String? pool,
    GachaRuleType? ruleType,
  }) =>
      _db.gachaRecordsDao.watch(
        uid.getOrCrash(),
        pool: pool,
        ruleType: ruleType,
      );

  @override
  Future<GachaDto> paginate(
    Uid uid, {
    required int page,
    String? pool,
  }) =>
      _db.gachaRecordsDao.paginate(uid.getOrCrash(), page: page, pool: pool);
}
