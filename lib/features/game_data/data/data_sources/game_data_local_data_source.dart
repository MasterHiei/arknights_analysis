import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/providers/database_provider.dart';
import '../dtos/gacha_pool_dto.dart';

part 'game_data_local_data_source.g.dart';

@riverpod
GameDataLocalDataSource gameDataLocalDataSource(
  GameDataLocalDataSourceRef ref,
) =>
    GameDataLocalDataSourceImpl(ref.watch(databaseProvider));

abstract class GameDataLocalDataSource {
  Future<bool> isEmpty();

  Future<List<int>> saveGachaPools(List<GachaPoolDto> pools);
}

class GameDataLocalDataSourceImpl implements GameDataLocalDataSource {
  const GameDataLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<bool> isEmpty() => _db.gachaPoolsDao.isEmpty();

  @override
  Future<List<int>> saveGachaPools(List<GachaPoolDto> pools) =>
      _db.gachaPoolsDao.replaceInto(pools);
}
