import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/payment_repository_impl.dart';
import '../entities/payment_record.dart';
import '../repositories/payment_repository.dart';

part 'get_cached_payment_history.g.dart';

@riverpod
GetCachedPaymentHistory getCachedPaymentHistory(
  GetCachedPaymentHistoryRef ref,
) =>
    GetCachedPaymentHistory(ref.watch(paymentRepositoryProvider));

final class GetCachedPaymentHistory
    implements TaskUseCase<List<PaymentRecord>, GetCachedPaymentHistoryParams> {
  const GetCachedPaymentHistory(this.paymentRepository);

  final PaymentRepository paymentRepository;

  @override
  TaskEither<AppFailure, List<PaymentRecord>> call(
    GetCachedPaymentHistoryParams params,
  ) =>
      paymentRepository.getHistory(params);
}
