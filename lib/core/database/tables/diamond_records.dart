import 'package:drift/drift.dart';

import '../converters/list_converter.dart';

class DiamondRecords extends Table {
  IntColumn get ts => integer()();

  TextColumn get operation => text()();

  TextColumn get changes => text().map(const ListConverter())();

  TextColumn get uid => text()();

  @override
  Set<Column> get primaryKey => {ts, uid};
}
