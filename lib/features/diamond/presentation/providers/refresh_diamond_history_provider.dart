import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../../auth/domain/usecases/get_cached_user_channel.dart';
import '../../domain/usecases/fetch_diamond_history.dart';
import 'states/refresh_diamond_history_state.dart';

part 'refresh_diamond_history_provider.g.dart';

@riverpod
class RefreshDiamondHistory extends _$RefreshDiamondHistory {
  @override
  RefreshDiamondHistoryState build() => const RefreshDiamondHistoryState.init();

  Future<void> call({
    int page = 1,
    int? total,
  }) async {
    state = RefreshDiamondHistoryState.fetching(current: page, total: total);

    await 500.milliseconds.delay;

    const noParams = NoParams();
    final getUser = ref.read(getCachedUserProvider).call(noParams);
    final getChannel = ref.read(getCachedUserChannelProvider).call(noParams);
    final combinedGetParamsIO = getUser.map(
      (user) => getChannel
          .map(
            (channel) => FetchDiamondHistoryParams(
              uid: user.uid,
              token: user.token,
              channel: channel,
            ),
          )
          .toTaskEither(),
    );

    final combinedFetchHistoryTask = TaskEither.flatten(combinedGetParamsIO)
        .map(ref.read(fetchDiamondHistoryProvider).call);

    await TaskEither.flatten(combinedFetchHistoryTask).match(
      (failure) => state = RefreshDiamondHistoryState.failure(failure),
      (pagination) async {
        if (pagination.isLastPage) {
          state = const RefreshDiamondHistoryState.success();
          return;
        }

        final next = pagination.current + 1;
        final total = pagination.totalPage;
        call(page: next, total: total);
      },
    ).run();
  }
}
