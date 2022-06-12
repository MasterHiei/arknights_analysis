import 'package:dartx/dartx.dart';
import 'package:drift/drift.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/enums/gacha_rule_type.dart';
import '../../../gacha/dtos/gacha_dto.dart';
import '../../../gacha/dtos/gacha_record_dto.dart';
import '../../common/dtos/pagination_dto.dart';
import '../app_database.dart';
import '../tables/index.dart';

part 'gacha_records_dao.g.dart';

@DriftAccessor(tables: [GachaPools, GachaRecords])
class GachaRecordsDao extends DatabaseAccessor<AppDatabase>
    with _$GachaRecordsDaoMixin {
  GachaRecordsDao(AppDatabase db) : super(db);

  Future<List<String>> getPools() async {
    final pool = gachaRecords.pool;
    final pools = await select(gachaRecords)
        .addColumns([pool])
        .map((row) => row.read(pool))
        .get();
    return pools.toSet().filterNotNull().toList();
  }

  Future<List<GachaRecordDto>> get(
    String uid, {
    String? pool,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) async {
    final query = select(gachaRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)]);

    if (pool != null) {
      query.where((tbl) => tbl.pool.equals(pool));
    }

    if (includeRuleTypes != null) {
      final poolName = gachaPools.gachaPoolName;
      final poolNameQuery = selectOnly(gachaPools)
        ..addColumns([poolName])
        ..where(
          gachaPools.gachaRuleType.isIn(
            includeRuleTypes.map((type) => type.value),
          ),
        );
      query.where((tbl) => tbl.pool.isInQuery(poolNameQuery));
    }

    if (excludeRuleTypes != null) {
      final poolName = gachaPools.gachaPoolName;
      final poolNameQuery = selectOnly(gachaPools)
        ..addColumns([poolName])
        ..where(
          gachaPools.gachaRuleType.isIn(
            excludeRuleTypes.map((type) => type.value),
          ),
        );
      query.where((tbl) => tbl.pool.isNotInQuery(poolNameQuery));
    }

    final records = await query.get();
    return records
        .map((record) => GachaRecordDto.fromJson(record.toJson()))
        .toList();
  }

  Future<GachaDto> paginate(
    String uid, {
    required int page,
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
    final total = (count / pageSize).ceil();
    final pagination = PaginationDto(current: page, total: total);

    return GachaDto(list: records, pagination: pagination);
  }

  Future<List<int>> replaceInto(GachaDto gacha) async {
    final futures = gacha.list.map((record) {
      final entity = GachaRecord.fromJson(record.toJson());
      return into(gachaRecords).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<void> clear() => delete(gachaRecords).go();
}
