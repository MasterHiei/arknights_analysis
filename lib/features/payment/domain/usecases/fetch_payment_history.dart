import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/payment_repository_impl.dart';
import '../repositories/payment_repository.dart';

part 'fetch_payment_history.g.dart';

@riverpod
FetchPaymentHistory fetchPaymentHistory(FetchPaymentHistoryRef ref) =>
    FetchPaymentHistory(ref.watch(paymentRepositoryProvider));

final class FetchPaymentHistory
    implements TaskUseCase<Unit, FetchPaymentHistoryParams> {
  const FetchPaymentHistory(this.paymentRepository);

  final PaymentRepository paymentRepository;

  @override
  TaskEither<AppFailure, Unit> call(FetchPaymentHistoryParams params) =>
      paymentRepository.fetchHistory(params);
}
