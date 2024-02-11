import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/entities/payment_record.dart';
import '../../domain/usecases/get_cached_payment_history.dart';

part 'get_payment_history_provider.g.dart';

@riverpod
class GetPaymentHistory extends _$GetPaymentHistory {
  @override
  AsyncValue<List<PaymentRecord>> build() {
    _get();
    return const AsyncValue.loading();
  }

  Future<void> _get() async {
    const noParams = NoParams();
    final getHistoryTask = ref
        .read(getCachedUserProvider)
        .call(noParams)
        .map((user) => GetCachedPaymentHistoryParams(uid: user.uid))
        .map(ref.read(getCachedPaymentHistoryProvider).call);

    state = await TaskEither.flatten(getHistoryTask)
        .match(
          (failure) => failure.toAsyncError<List<PaymentRecord>>(),
          AsyncValue.data,
        )
        .run();
  }
}
