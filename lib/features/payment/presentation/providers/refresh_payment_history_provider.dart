import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../../auth/domain/usecases/get_cached_user_channel.dart';
import '../../domain/usecases/fetch_payment_history.dart';

part 'refresh_payment_history_provider.g.dart';

@riverpod
class RefreshPaymentHistory extends _$RefreshPaymentHistory {
  @override
  AsyncValue<Unit> build() => const AsyncValue.data(unit);

  Future<void> call() async {
    state = const AsyncValue.loading();

    const noParams = NoParams();
    final getUser = ref.read(getCachedUserProvider).call(noParams);
    final getChannel = ref.read(getCachedUserChannelProvider).call(noParams);
    final combinedGetParamsIO = getUser.map(
      (user) => getChannel
          .map(
            (channel) => FetchPaymentHistoryParams(
              uid: user.uid,
              token: user.token,
            ),
          )
          .toTaskEither(),
    );

    final combinedFetchHistoryTask = TaskEither.flatten(combinedGetParamsIO)
        .map(ref.read(fetchPaymentHistoryProvider).call);

    state = await TaskEither.flatten(combinedFetchHistoryTask)
        .match(
          (failure) => failure.toAsyncError<Unit>(),
          (success) => AsyncValue.data(success),
        )
        .run();
  }
}
