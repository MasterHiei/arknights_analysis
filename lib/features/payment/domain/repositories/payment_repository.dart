import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../entities/payment_record.dart';

abstract class PaymentRepository {
  TaskEither<AppFailure, Unit> fetchHistory(
    FetchPaymentHistoryParams params,
  );

  TaskEither<AppFailure, List<PaymentRecord>> getHistory(
    GetCachedPaymentHistoryParams params,
  );
}
