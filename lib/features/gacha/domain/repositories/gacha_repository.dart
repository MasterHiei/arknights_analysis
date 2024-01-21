import 'package:fpdart/fpdart.dart';

import '../../../../core/common/pagination.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../entities/gacha_char.dart';
import '../entities/gacha_pool.dart';
import '../entities/gacha_stats.dart';

abstract class GachaRepository {
  TaskEither<AppFailure, Pagination> fetchHistory(
    FetchGachaHistoryParams paras,
  );

  TaskEither<AppFailure, List<String>> getRecordedPools(
    GetRecordedGachaPoolsParams params,
  );

  TaskEither<AppFailure, GachaPool> getPool(
    GetGachaPoolParams params,
  );

  TaskEither<AppFailure, GachaStats> getStats(
    GetGachaStatsParams params,
  );

  TaskEither<AppFailure, List<GachaChar>> getHistory(
    GetCachedGachaHistoryParams params,
  );
}
