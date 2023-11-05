import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/database_provider.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/database/app_database.dart';
import '../dtos/exchange_log_dto.dart';

part 'gift_local_data_source.g.dart';

@riverpod
GiftLocalDataSource giftLocalDataSource(GiftLocalDataSourceRef ref) =>
    GiftLocalDataSourceImpl(ref.watch(databaseProvider));

abstract class GiftLocalDataSource {
  Future<List<int>> save(Iterable<ExchangeLogDto> dto);

  Future<List<ExchangeLogDto>> getLogs(Uid uid);
}

class GiftLocalDataSourceImpl implements GiftLocalDataSource {
  const GiftLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<List<int>> save(Iterable<ExchangeLogDto> logs) =>
      _db.giftExchangeLogsDao.replaceInto(logs);

  @override
  Future<List<ExchangeLogDto>> getLogs(Uid uid) =>
      _db.giftExchangeLogsDao.get(uid.getOrCrash());
}
