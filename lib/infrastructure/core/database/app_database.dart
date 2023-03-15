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
  DiamondRecords,
];
const _daos = [
  UsersDao,
  GachaPoolsDao,
  GachaRecordsDao,
  DiamondRecordsDao,
];

@DriftDatabase(tables: _tables, daos: _daos)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => Constants.dbVersion;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) => m.createAll(),
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            await m.createTable(diamondRecords);
          }
        },
      );
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dir = await getApplicationSupportDirectory();
      final file = File(join(dir.path, Constants.dbName));
      return NativeDatabase(file);
    });
