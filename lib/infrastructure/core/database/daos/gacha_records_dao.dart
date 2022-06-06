import 'package:drift/drift.dart';

import '../../../../core/constants/constants.dart';
import '../../../gacha/dtos/gacha_dto.dart';
import '../../../gacha/dtos/gacha_record_dto.dart';
import '../../common/dtos/pagination_dto.dart';
import '../app_database.dart';
import '../tables/gacha_records.dart';

part 'gacha_records_dao.g.dart';

@DriftAccessor(tables: [GachaRecords])
class GachaRecordsDao extends DatabaseAccessor<AppDatabase>
    with _$GachaRecordsDaoMixin {
  GachaRecordsDao(AppDatabase db) : super(db);

  Future<GachaDto> get(String uid, {required int page}) async {
    final offset = (page - 1) * pageSize;
    final query = select(gachaRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)])
      ..limit(pageSize, offset: offset);
    final records = (await query.get())
        .map((record) => GachaRecordDto.fromJson(record.toJson()))
        .toList();

    final amount = countAll();
    final count = await (selectOnly(gachaRecords)..addColumns([amount]))
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

  Stream<List<GachaRecordDto>> watchRecords(String uid) {
    final query = select(gachaRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)]);
    return query.watch().map(
          (records) => records
              .map((record) => GachaRecordDto.fromJson(record.toJson()))
              .toList(),
        );
  }

  Future<void> clear() => delete(gachaRecords).go();
}
