import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/value_objects/uid.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/providers/database_provider.dart';
import '../../../../core/providers/file_manager_provider.dart';
import '../../../diamond/data/dtos/diamond_dto.dart';
import '../../../gacha/data/dtos/gacha_dto.dart';
import '../dtos/persistence_dto.dart';

part 'persistence_local_data_source.g.dart';

@riverpod
PersistenceLocalDataSource persistenceLocalDataSource(
  PersistenceLocalDataSourceRef ref,
) =>
    PersistenceLocalDataSourceImpl(
      ref.watch(databaseProvider),
      ref.watch(fileManagerProvider),
    );

abstract class PersistenceLocalDataSource {
  Future<File> export(
    Uid uid, {
    required String path,
  });

  Future<void> import(
    Uid uid, {
    required String path,
  });
}

class PersistenceLocalDataSourceImpl implements PersistenceLocalDataSource {
  const PersistenceLocalDataSourceImpl(
    this._db,
    this._fileManager,
  );

  final AppDatabase _db;
  final FileManager _fileManager;

  @override
  Future<void> import(
    Uid uid, {
    required String path,
  }) async {
    final json = await _fileManager.readJson(path);
    final dto = PersistenceDto.fromJson(json);
    await Future.wait([
      _db.gachaRecordsDao.replaceInto(dto.gacha),
      _db.diamondRecordsDao.replaceInto(dto.diamond),
    ]);
  }

  @override
  Future<File> export(
    Uid uid, {
    required String path,
  }) async {
    final gachaRecords = await _db.gachaRecordsDao.get(
      uid.getOrCrash(),
      pools: [],
    );
    final diamondRecords = await _db.diamondRecordsDao.get(
      uid.getOrCrash(),
    );
    final dto = PersistenceDto(
      gacha: GachaDto.fromRecords(gachaRecords),
      diamond: DiamondDto.fromRecords(diamondRecords),
    );
    return _fileManager.writeJson(dto.toJson(), path: path);
  }
}
