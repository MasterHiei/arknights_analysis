import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/enums/gacha_rule_type.dart';
import '../../../core/providers/database_provider.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/database/app_database.dart';
import '../../game_data_raw/dtos/gacha_pool_dto.dart';
import '../dtos/gacha_dto.dart';
import '../dtos/gacha_record_dto.dart';

final gachaLocalDataSourceProvider = Provider.autoDispose<GachaLocalDataSource>(
  (ref) => GachaLocalDataSourceImpl(
    ref.watch(databaseProvider),
  ),
);

abstract class GachaLocalDataSource {
  Future<List<int>> save(GachaDto dto);

  Future<List<String>> getRecordedPools({
    required Uid uid,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
    required bool includeNew2023,
  });

  Future<GachaPoolDto?> getPoolByName(String name);

  Future<List<GachaRecordDto>> getRecords(
    Uid uid, {
    bool showAllPools = true,
    required List<String> pools,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  });

  Future<GachaDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
    String? pool,
  });
}

class GachaLocalDataSourceImpl implements GachaLocalDataSource {
  const GachaLocalDataSourceImpl(
    this._db,
  );

  final AppDatabase _db;

  @override
  Future<List<int>> save(GachaDto gacha) =>
      _db.gachaRecordsDao.replaceInto(gacha);

  @override
  Future<List<String>> getRecordedPools({
    required Uid uid,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
    required bool includeNew2023,
  }) =>
      _db.gachaPoolsDao.getRecorded(
        uid: uid,
        includeRuleTypes: includeRuleTypes,
        excludeRuleTypes: excludeRuleTypes,
        includeNew2023: includeNew2023,
      );

  @override
  Future<GachaPoolDto?> getPoolByName(String name) =>
      _db.gachaPoolsDao.getByName(name);

  @override
  Future<List<GachaRecordDto>> getRecords(
    Uid uid, {
    bool showAllPools = true,
    required List<String> pools,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) =>
      _db.gachaRecordsDao.get(
        uid.getOrCrash(),
        showAllPools: showAllPools,
        pools: pools,
        includeRuleTypes: includeRuleTypes,
        excludeRuleTypes: excludeRuleTypes,
      );

  @override
  Future<GachaDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
    String? pool,
  }) =>
      _db.gachaRecordsDao.paginate(
        uid.getOrCrash(),
        page: page,
        pageSize: pageSize,
        pool: pool,
      );
}
