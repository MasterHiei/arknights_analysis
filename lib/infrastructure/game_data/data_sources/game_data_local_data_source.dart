import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../core/database/app_database.dart';
import '../dtos/gacha_table_dto.dart';

final gameDataLocalDataSourceProvider =
    Provider.autoDispose<GameDataLocalDataSource>(
  (ref) => GameDataLocalDataSourceImpl(ref.watch(dbProvider)),
);

abstract class GameDataLocalDataSource {
  Future<int> count();

  Future<List<int>> saveGachaPools(GachaTableDto dto);
}

class GameDataLocalDataSourceImpl implements GameDataLocalDataSource {
  const GameDataLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<int> count() => _db.gachaPoolsDao.count();

  @override
  Future<List<int>> saveGachaPools(GachaTableDto gacha) =>
      _db.gachaPoolsDao.replaceInto(gacha);
}
