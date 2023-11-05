import 'package:drift/drift.dart';

import '../../../payments/dtos/payment_record_dto.dart';
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

  Future<List<int>> replaceInto(Iterable<PaymentRecordDto> records) async {
    final futures = records.map((record) {
      final entity = PaymentRecord.fromJson(record.toJson());
      return into(paymentRecords).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<void> clear() => delete(paymentRecords).go();
}
