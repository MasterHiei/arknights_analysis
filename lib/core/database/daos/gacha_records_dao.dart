import 'package:drift/drift.dart';

import '../../../infrastructure/gacha/dtos/gacha_dto.dart';
import '../../../infrastructure/gacha/dtos/gacha_record_dto.dart';
import '../../common/dtos/pagination_dto.dart';
import '../../enums/gacha_rule_type.dart';
import '../app_database.dart';
import '../tables/gacha_pools.dart';
import '../tables/gacha_records.dart';

part 'gacha_records_dao.g.dart';

@DriftAccessor(tables: [GachaPools, GachaRecords])
class GachaRecordsDao extends DatabaseAccessor<AppDatabase>
    with _$GachaRecordsDaoMixin {
  GachaRecordsDao(super.db);

  Future<List<GachaRecordDto>> get(
    String uid, {
    bool showAllPools = true,
    required List<String> pools,
    List<String> excludePools = const [],
    Iterable<GachaRuleType> includeRuleTypes = const Iterable.empty(),
    Iterable<GachaRuleType> excludeRuleTypes = const Iterable.empty(),
  }) async {
    final query = select(gachaRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)]);

    if (!showAllPools) {
      query.where((tbl) => tbl.pool.isIn(pools));
    }

    if (excludePools.isNotEmpty) {
      query.where((tbl) => tbl.pool.isNotIn(excludePools));
    }

    if (includeRuleTypes.isNotEmpty) {
      final isInQuery = selectOnly(gachaPools)
        ..addColumns([gachaPools.gachaPoolName])
        ..where(
          gachaPools.gachaRuleType.isIn(
            includeRuleTypes.map((type) => type.value),
          ),
        );
      query.where((tbl) => tbl.pool.isInQuery(isInQuery));
    }

    if (excludeRuleTypes.isNotEmpty) {
      final isNotInQuery = selectOnly(gachaPools)
        ..addColumns([gachaPools.gachaPoolName])
        ..where(
          gachaPools.gachaRuleType.isIn(
            excludeRuleTypes.map((type) => type.value),
          ),
        );
      query.where((tbl) => tbl.pool.isNotInQuery(isNotInQuery));
    }

    final records = await query.get();
    return records
        .map((record) => GachaRecordDto.fromJson(record.toJson()))
        .toList();
  }

  Future<GachaDto> paginate(
    String uid, {
    required int page,
    required int pageSize,
    String? pool,
  }) async {
    final offset = (page - 1) * pageSize;
    final query = select(gachaRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)])
      ..limit(pageSize, offset: offset);

    if (pool != null) {
      query.where((tbl) => tbl.pool.equals(pool));
    }

    final records = (await query.get())
        .map((record) => GachaRecordDto.fromJson(record.toJson()))
        .toList();

    final amount = countAll();
    final count = await query
        .addColumns([amount])
        .map((row) => row.read(amount))
        .getSingle();
    final total = ((count ?? 0) / pageSize).ceil();
    final pagination = PaginationDto(current: page, total: total);

    return GachaDto(records: records, pagination: pagination);
  }

  Future<List<int>> replaceInto(GachaDto gacha) async {
    final futures = gacha.records.map((record) {
      final entity = GachaRecord.fromJson(record.toJson());
      return into(gachaRecords).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<void> clear() => delete(gachaRecords).go();
}
