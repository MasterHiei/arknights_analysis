import 'package:drift/drift.dart';

import '../../../gifts/dtos/exchange_log_dto.dart';
import '../app_database.dart';
import '../tables/gift_exchange_logs.dart';

part 'gift_exchange_logs_dao.g.dart';

@DriftAccessor(tables: [GiftExchangeLogs])
class GiftExchangeLogsDao extends DatabaseAccessor<AppDatabase>
    with _$GiftExchangeLogsDaoMixin {
  GiftExchangeLogsDao(super.db);

  Future<List<ExchangeLogDto>> get(String uid) async {
    final query = select(giftExchangeLogs)
      ..where((tbl) => tbl.uid.equals(uid))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.ts)]);

    final logs = await query.get();
    return logs.map((log) => ExchangeLogDto.fromJson(log.toJson())).toList();
  }

  Future<List<int>> replaceInto(Iterable<ExchangeLogDto> logs) async {
    final futures = logs.map((log) {
      final entity = GiftExchangeLog.fromJson(log.toJson());
      return into(giftExchangeLogs).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }

  Future<void> clear() => delete(giftExchangeLogs).go();
}
