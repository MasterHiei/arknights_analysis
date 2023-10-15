import 'package:drift/drift.dart';

import '../../../payments/dtos/payment_dto.dart';
import '../../../payments/dtos/payment_record_dto.dart';
import '../../common/dtos/pagination_dto.dart';
import '../app_database.dart';
import '../tables/payment_records.dart';

part 'payment_records_dao.g.dart';

@DriftAccessor(tables: [PaymentRecords])
class PaymentRecordsDao extends DatabaseAccessor<AppDatabase>
    with _$PaymentRecordsDaoMixin {
  PaymentRecordsDao(super.db);

  Future<List<PaymentRecordDto>> get(String uid) async {
    final query = select(paymentRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.payTime)]);

    final records = await query.get();
    return records
        .map((record) => PaymentRecordDto.fromJson(record.toJson()))
        .toList();
  }

  Future<PaymentDto> paginate(
    String uid, {
    required int page,
    required int pageSize,
  }) async {
    final offset = (page - 1) * pageSize;
    final query = select(paymentRecords)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.payTime)])
      ..limit(pageSize, offset: offset);

    final records = (await query.get())
        .map((record) => PaymentRecordDto.fromJson(record.toJson()))
        .toList();

    final amount = countAll();
    final count = await query
        .addColumns([amount])
        .map((row) => row.read(amount))
        .getSingle();
    final total = ((count ?? 0) / pageSize).ceil();
    final pagination = PaginationDto(current: page, total: total);

    return PaymentDto(records: records, pagination: pagination);
  }

  Future<List<int>> replaceInto(PaymentDto payment) async {
    final futures = payment.records.map((record) {
      final entity = PaymentRecord.fromJson(record.toJson());
      return into(paymentRecords).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<void> clear() => delete(paymentRecords).go();
}
