import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/value_objects/uid.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/providers/database_provider.dart';
import '../dtos/diamond_dto.dart';
import '../dtos/diamond_record_dto.dart';

part 'diamond_local_data_source.g.dart';

@riverpod
DiamondLocalDataSource diamondLocalDataSource(DiamondLocalDataSourceRef ref) =>
    DiamondLocalDataSourceImpl(ref.watch(databaseProvider));

abstract class DiamondLocalDataSource {
  Future<List<int>> save(DiamondDto dto);

  Future<List<DiamondRecordDto>> getRecords(Uid uid);

  Future<DiamondDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
  });
}

class DiamondLocalDataSourceImpl implements DiamondLocalDataSource {
  const DiamondLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<List<int>> save(DiamondDto diamond) =>
      _db.diamondRecordsDao.replaceInto(diamond);

  @override
  Future<List<DiamondRecordDto>> getRecords(Uid uid) =>
      _db.diamondRecordsDao.get(uid.getOrCrash());

  @override
  Future<DiamondDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
  }) =>
      _db.diamondRecordsDao.paginate(
        uid.getOrCrash(),
        page: page,
        pageSize: pageSize,
      );
}
