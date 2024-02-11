import 'package:fpdart/fpdart.dart';

import '../../../../core/common/pagination.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../entities/diamond_change.dart';

abstract class DiamondRepository {
  TaskEither<AppFailure, Pagination> fetchHistory(
    FetchDiamondHistoryParams params,
  );

  TaskEither<AppFailure, List<DiamondChange>> getHistory(
    GetCachedDiamondHistoryParams params,
  );
}
