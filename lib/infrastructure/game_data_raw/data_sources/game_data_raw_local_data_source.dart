import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/database_provider.dart';
import '../../core/database/app_database.dart';
import '../dtos/gacha_table_dto.dart';

part 'game_data_raw_local_data_source.g.dart';

@riverpod
GameDataRawLocalDataSource gameDataRawLocalDataSource(
  GameDataRawLocalDataSourceRef ref,
) =>
    GameDataRawLocalDataSourceImpl(ref.watch(databaseProvider));

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
