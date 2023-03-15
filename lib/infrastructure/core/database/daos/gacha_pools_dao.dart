import 'package:dartx/dartx.dart';
import 'package:drift/drift.dart';

import '../../../../core/enums/gacha_rule_type.dart';
import '../../../../domain/user/value_objects/uid.dart';
import '../../../game_data_raw/dtos/gacha_pool_dto.dart';
import '../../../game_data_raw/dtos/gacha_table_dto.dart';
import '../app_database.dart';
import '../tables/gacha_pools.dart';
import '../tables/gacha_records.dart';

part 'gacha_pools_dao.g.dart';

@DriftAccessor(tables: [GachaPools, GachaRecords])
class GachaPoolsDao extends DatabaseAccessor<AppDatabase>
    with _$GachaPoolsDaoMixin {
  GachaPoolsDao(super.db);

  Future<List<int>> replaceInto(GachaTableDto gachaTable) async {
    final futures = gachaTable.gachaPoolClient.map((pool) {
      final entity = GachaPool.fromJson(pool.toJson());
      return into(gachaPools).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<List<String>> getRecorded({
    required Uid uid,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) async {
    final conditionQuery = select(gachaRecords)
      ..where((tbl) => tbl.uid.equals(uid.getOrCrash()))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)]);
    if (includeRuleTypes != null) {
      final isInQuery = selectOnly(gachaPools)
        ..addColumns([gachaPools.gachaPoolName])
        ..where(
          gachaPools.gachaRuleType.isIn(
            includeRuleTypes.map((type) => type.value),
          ),
        );
      conditionQuery.where((tbl) => tbl.pool.isInQuery(isInQuery));
    }

    if (excludeRuleTypes != null) {
      final isNotInQuery = selectOnly(gachaPools)
        ..addColumns([gachaPools.gachaPoolName])
        ..where(
          gachaPools.gachaRuleType.isIn(
            excludeRuleTypes.map((type) => type.value),
          ),
        );
      conditionQuery.where((tbl) => tbl.pool.isNotInQuery(isNotInQuery));
    }

    final pool = gachaRecords.pool;
    final pools = await conditionQuery
        .addColumns([pool])
        .map((row) => row.read(pool))
        .get();
    return pools.toSet().filterNotNull().toList();
  }

  Future<GachaPoolDto?> getByName(String name) async {
    final query = select(gachaPools)
      ..where((tbl) => tbl.gachaPoolName.equals(name));
    final pool = await query.getSingleOrNull();
    if (pool == null) {
      return null;
    }
    return GachaPoolDto.fromJson(pool.toJson());
  }
}
