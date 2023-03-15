import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../core/database/app_database.dart';
import '../dtos/gacha_table_dto.dart';

final gameDataRawLocalDataSourceProvider =
    Provider.autoDispose<GameDataRawLocalDataSource>(
  (ref) => GameDataRawLocalDataSourceImpl(ref.watch(dbProvider)),
);

abstract class GameDataRawLocalDataSource {
  Future<List<int>> saveGachaPools(GachaTableDto dto);
}

class GameDataRawLocalDataSourceImpl implements GameDataRawLocalDataSource {
  const GameDataRawLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<List<int>> saveGachaPools(GachaTableDto gacha) =>
      _db.gachaPoolsDao.replaceInto(gacha);
}
