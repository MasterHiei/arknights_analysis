import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/utils/file_manager.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/database/app_database.dart';
import '../../diamonds/dtos/diamond_dto.dart';
import '../../gacha/dtos/gacha_dto.dart';
import '../dtos/persistence_dto.dart';

final persistenceLocalDataSourceProvider =
    Provider.autoDispose<PersistenceLocalDataSource>(
  (ref) => PersistenceLocalDataSourceImpl(
    ref.watch(dbProvider),
    ref.watch(fileManagerProvider),
  ),
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
}
