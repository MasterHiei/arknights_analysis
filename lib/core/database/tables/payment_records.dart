import 'package:drift/drift.dart';

class PaymentRecords extends Table {
  TextColumn get orderId => text()();

  IntColumn get platform => integer()();

  IntColumn get amount => integer()();

  TextColumn get productName => text()();

  IntColumn get payTime => integer()();

  TextColumn get uid => text()();

  @override
  Set<Column> get primaryKey => {orderId, uid};
}
