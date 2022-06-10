import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/constants/constants.dart';
import 'converters/index.dart';
import 'daos/index.dart';
import 'tables/index.dart';

part 'app_database.g.dart';

const _tables = [
  Users,
  GachaPools,
  GachaRecords,
];
const _daos = [
  UsersDao,
  GachaRecordsDao,
];

@DriftDatabase(tables: _tables, daos: _daos)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => dbVersion;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator migrator) => migrator.createAll(),
      );
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dir = await getApplicationSupportDirectory();
      final file = File(join(dir.path, dbName));
      return NativeDatabase(file);
    });
