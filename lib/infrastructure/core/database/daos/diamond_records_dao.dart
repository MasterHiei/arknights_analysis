import 'package:drift/drift.dart';

import '../../../diamonds/dtos/diamond_dto.dart';
import '../../../diamonds/dtos/diamond_record_dto.dart';
import '../../common/dtos/pagination_dto.dart';
import '../app_database.dart';
import '../tables/diamond_records.dart';

part 'diamond_records_dao.g.dart';

@DriftAccessor(tables: [DiamondRecords])
class DiamondRecordsDao extends DatabaseAccessor<AppDatabase>
    with _$DiamondRecordsDaoMixin {
  DiamondRecordsDao(super.db);

  Future<List<DiamondRecordDto>> get(String uid) async {
    final query = select(diamondRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)]);

    final records = await query.get();
    return records
        .map((record) => DiamondRecordDto.fromJson(record.toJson()))
        .toList();
  }

  Future<DiamondDto> paginate(
    String uid, {
    required int page,
    required int pageSize,
  }) async {
    final offset = (page - 1) * pageSize;
    final query = select(diamondRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)])
      ..limit(pageSize, offset: offset);

    final records = (await query.get())
        .map((record) => DiamondRecordDto.fromJson(record.toJson()))
        .toList();

    final amount = countAll();
    final count = await query
        .addColumns([amount])
        .map((row) => row.read(amount))
        .getSingle();
    final total = ((count ?? 0) / pageSize).ceil();
    final pagination = PaginationDto(current: page, total: total);

    return DiamondDto(list: records, pagination: pagination);
  }

  Future<List<int>> replaceInto(DiamondDto diamond) async {
    final futures = diamond.list.map((record) {
      final entity = DiamondRecord.fromJson(record.toJson());
      return into(diamondRecords).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<void> clear() => delete(diamondRecords).go();
}
