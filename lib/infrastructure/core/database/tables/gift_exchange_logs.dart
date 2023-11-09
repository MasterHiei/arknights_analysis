import 'package:drift/drift.dart';

class GiftExchangeLogs extends Table {
  TextColumn get giftName => text()();

  TextColumn get code => text()();

  IntColumn get ts => integer()();

  TextColumn get uid => text()();

  @override
  Set<Column> get primaryKey => {ts, uid};
}
