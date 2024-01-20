import 'package:dartx/dartx.dart';
import 'package:drift/drift.dart';

import '../../../features/game_data/data/dtos/gacha_pool_dto.dart';
import '../../common/value_objects/uid.dart';
import '../../enums/gacha_rule_type.dart';
import '../app_database.dart';
import '../tables/gacha_pools.dart';
import '../tables/gacha_records.dart';

part 'gacha_pools_dao.g.dart';

@DriftAccessor(tables: [GachaPools, GachaRecords])
class GachaPoolsDao extends DatabaseAccessor<AppDatabase>
    with _$GachaPoolsDaoMixin {
  GachaPoolsDao(super.db);

  Future<bool> isEmpty() async {
    final query = select(gachaPools);
    final result = await query.get();
    return result.isEmpty;
  }

  Future<List<int>> replaceInto(List<GachaPoolDto> pools) async {
    final futures = pools.map((pool) {
      final entity = GachaPool.fromJson(pool.toJson());
      return into(gachaPools).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<List<String>> getRecorded({
    required Uid uid,
    required Iterable<GachaRuleType> includeRuleTypes,
    required Iterable<GachaRuleType> excludeRuleTypes,
    required bool includeClassics,
  }) async {
    final conditionQuery = select(gachaRecords)
      ..where((tbl) => tbl.uid.equals(uid.getOrCrash()))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)]);
    if (includeRuleTypes.isNotEmpty) {
      final isInQuery = selectOnly(gachaPools)
        ..addColumns([gachaPools.gachaPoolName])
        ..where(
          gachaPools.gachaRuleType.isIn(
            includeRuleTypes.map((type) => type.value),
          ),
        );
      conditionQuery.where(
        (tbl) {
          final expressions = [
            tbl.pool.isInQuery(isInQuery),
            if (includeClassics) tbl.pool.isIn(GachaRuleType.classicPools),
          ];
          return expressions.reduce((fst, snd) => fst | snd);
        },
      );
    }

    if (excludeRuleTypes.isNotEmpty) {
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
