import 'package:drift/drift.dart';

import '../converters/list_converter.dart';

class GachaRecords extends Table {
  IntColumn get ts => integer()();

  TextColumn get pool => text()();

  TextColumn get chars => text().map(const ListConverter())();

  TextColumn get uid => text()();

  @override
  Set<Column<dynamic>> get primaryKey => {ts, uid};
}
