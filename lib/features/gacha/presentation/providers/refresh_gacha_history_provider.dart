import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../../auth/domain/usecases/get_cached_user_channel.dart';
import '../../domain/usecases/fetch_gacha_history.dart';
import 'states/refresh_gacha_history_state.dart';

part 'refresh_gacha_history_provider.g.dart';

@riverpod
class RefreshGachaHistory extends _$RefreshGachaHistory {
  @override
  RefreshGachaHistoryState build() => const RefreshGachaHistoryState.success();

  Future<void> call({
    int page = 1,
    int total = 0,
  }) async {
    state = RefreshGachaHistoryState.fetching(current: page, total: total);

    await 500.milliseconds.delay;

    const noParams = NoParams();
    final getUser = ref.read(getCachedUserProvider).call(noParams);
    final getChannel = ref.read(getCachedUserChannelProvider).call(noParams);
    final combinedGetParamsIO = getUser.map(
      (user) => getChannel
          .map(
            (channel) => FetchGachaHistoryParams(
              uid: user.uid,
              token: user.token,
              channel: channel,
            ),
          )
          .toTaskEither(),
    );

    final combinedFetchHistoryTask = TaskEither.flatten(combinedGetParamsIO)
        .map(ref.read(fetchGachaHistoryProvider).call);

    await TaskEither.flatten(combinedFetchHistoryTask).match(
      (failure) => state = RefreshGachaHistoryState.failure(failure),
      (pagination) async {
        if (pagination.isLastPage) {
          state = const RefreshGachaHistoryState.success();
          return;
        }

        final next = pagination.current + 1;
        final total = pagination.totalPage;
        return call(page: next, total: total);
      },
    ).run();
  }
}
