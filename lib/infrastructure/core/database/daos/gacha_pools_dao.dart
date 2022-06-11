import 'package:drift/drift.dart';

import '../../../game_data/dtos/gacha_table_dto.dart';
import '../app_database.dart';
import '../tables/gacha_pools.dart';

part 'gacha_pools_dao.g.dart';

@DriftAccessor(tables: [GachaPools])
class GachaPoolsDao extends DatabaseAccessor<AppDatabase>
    with _$GachaPoolsDaoMixin {
  GachaPoolsDao(AppDatabase db) : super(db);

  Future<List<int>> replaceInto(GachaTableDto gachaTable) async {
    final futures = gachaTable.gachaPoolClient.map((pool) {
      final entity = GachaPool.fromJson(pool.toJson());
      return into(gachaPools).insertOnConflictUpdate(entity);
    });
    return Future.wait(futures);
  }
}
