import 'package:drift/drift.dart';

class GachaPools extends Table {
  TextColumn get gachaPoolId => text()();

  IntColumn get gachaIndex => integer()();

  IntColumn get openTime => integer()();

  IntColumn get endTime => integer()();

  TextColumn get gachaPoolName => text()();

  TextColumn get gachaRuleType => text()();

  @override
  Set<Column<dynamic>> get primaryKey => {gachaPoolId};
}
