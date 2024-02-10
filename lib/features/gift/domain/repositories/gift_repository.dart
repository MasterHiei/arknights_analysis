import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../entities/exchange_log.dart';

abstract class GiftRepository {
  TaskEither<AppFailure, Unit> fetchHistory(
    FetchGiftHistoryParams params,
  );

  TaskEither<AppFailure, List<ExchangeLog>> getHistory(
    GetCachedGiftHistoryParams params,
  );
}
