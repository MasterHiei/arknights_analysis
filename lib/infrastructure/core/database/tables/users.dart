import 'package:drift/drift.dart';

class Users extends Table {
  TextColumn get uid => text()();

  TextColumn get nickName => text()();

  TextColumn get token => text().unique()();

  @override
  Set<Column> get primaryKey => {uid};
}
