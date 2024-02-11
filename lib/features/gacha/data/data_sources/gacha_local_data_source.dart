import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/value_objects/uid.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/enums/gacha_rule_type.dart';
import '../../../../core/providers/database_provider.dart';
import '../../../game_data/data/dtos/gacha_pool_dto.dart';
import '../dtos/gacha_dto.dart';
import '../dtos/gacha_record_dto.dart';

part 'gacha_local_data_source.g.dart';

@riverpod
GachaLocalDataSource gachaLocalDataSource(GachaLocalDataSourceRef ref) =>
    GachaLocalDataSourceImpl(ref.watch(databaseProvider));

abstract class GachaLocalDataSource {
  Future<List<int>> save(GachaDto dto);

  Future<List<String>> getRecordedPools({
    required Uid uid,
    Iterable<GachaRuleType> includeRuleTypes = const Iterable.empty(),
    Iterable<GachaRuleType> excludeRuleTypes = const Iterable.empty(),
    required bool includeClassics,
  });

  Future<GachaPoolDto?> getPoolByName(String name);

  Future<List<GachaRecordDto>> getRecords(
    Uid uid, {
    bool showAllPools = true,
    required List<String> pools,
    List<String> excludePools = const [],
    Iterable<GachaRuleType> includeRuleTypes = const Iterable.empty(),
    Iterable<GachaRuleType> excludeRuleTypes = const Iterable.empty(),
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
    Iterable<GachaRuleType> includeRuleTypes = const Iterable.empty(),
    Iterable<GachaRuleType> excludeRuleTypes = const Iterable.empty(),
    required bool includeClassics,
  }) =>
      _db.gachaPoolsDao.getRecorded(
        uid: uid,
        includeRuleTypes: includeRuleTypes,
        excludeRuleTypes: excludeRuleTypes,
        includeClassics: includeClassics,
      );

  @override
  Future<GachaPoolDto?> getPoolByName(String name) =>
      _db.gachaPoolsDao.getByName(name);

  @override
  Future<List<GachaRecordDto>> getRecords(
    Uid uid, {
    bool showAllPools = true,
    required List<String> pools,
    List<String> excludePools = const [],
    Iterable<GachaRuleType> includeRuleTypes = const Iterable.empty(),
    Iterable<GachaRuleType> excludeRuleTypes = const Iterable.empty(),
  }) =>
      _db.gachaRecordsDao.get(
        uid.getOrCrash(),
        showAllPools: showAllPools,
        pools: pools,
        excludePools: excludePools,
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
