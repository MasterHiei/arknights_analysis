import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/constants/constants.dart';
import '../../../core/enums/gacha_rule_type.dart';
import '../../../core/providers.dart';
import '../../../core/utils/file_manager.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/database/app_database.dart';
import '../dtos/gacha_dto.dart';
import '../dtos/gacha_record_dto.dart';

final gachaLocalDataSourceProvider = Provider.autoDispose<GachaLocalDataSource>(
  (ref) => GachaLocalDataSourceImpl(
    ref.watch(dbProvider),
    ref.watch(fileManagerProvider),
  ),
);

abstract class GachaLocalDataSource {
  Future<List<int>> save(GachaDto dto);

  Future<List<String>> getPools({
    required Uid uid,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  });

  Future<List<GachaRecordDto>> getRecords(
    Uid uid, {
    bool showAllPools = true,
    required List<String> pools,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  });

  Future<GachaDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
    String? pool,
  });

  Future<File> export(Uid uid);
}

class GachaLocalDataSourceImpl implements GachaLocalDataSource {
  const GachaLocalDataSourceImpl(this._db, this._fileManager);

  final AppDatabase _db;
  final FileManager _fileManager;

  @override
  Future<List<int>> save(GachaDto gacha) =>
      _db.gachaRecordsDao.replaceInto(gacha);

  @override
  Future<List<String>> getPools({
    required Uid uid,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) =>
      _db.gachaRecordsDao.getPools(
        uid: uid,
        includeRuleTypes: includeRuleTypes,
        excludeRuleTypes: excludeRuleTypes,
      );

  @override
  Future<List<GachaRecordDto>> getRecords(
    Uid uid, {
    bool showAllPools = true,
    required List<String> pools,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) =>
      _db.gachaRecordsDao.get(
        uid.getOrCrash(),
        showAllPools: showAllPools,
        pools: pools,
        includeRuleTypes: includeRuleTypes,
        excludeRuleTypes: excludeRuleTypes,
      );

  @override
  Future<GachaDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
    String? pool,
  }) =>
      _db.gachaRecordsDao.paginate(
        uid.getOrCrash(),
        page: page,
        pageSize: pageSize,
        pool: pool,
      );

  @override
  Future<File> export(Uid uid) async {
    final records = await _db.gachaRecordsDao.get(
      uid.getOrCrash(),
      pools: [],
    );
    final history = GachaDto.fromRecords(records);

    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}\\'
        '${uid.getOrCrash()}_$gachaHistoryExportFileName.json';
    return _fileManager.writeJson(history.toJson(), path: path);
  }
}
