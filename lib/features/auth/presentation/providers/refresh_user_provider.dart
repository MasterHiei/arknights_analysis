import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/usecases/fetch_user.dart';
import '../../domain/usecases/get_cached_token.dart';
import '../../domain/usecases/get_cached_user_channel.dart';

part 'refresh_user_provider.g.dart';

@riverpod
class RefreshUser extends _$RefreshUser {
  @override
  AsyncValue<Unit> build() => const AsyncValue.loading();

  Future<void> call() async {
    state = const AsyncValue.loading();

    // Create IOEither for geting params
    const noParams = NoParams();
    final getChannel = ref.read(getCachedUserChannelProvider).call(noParams);
    final getToken = ref.read(getCachedTokenProvider).call(noParams);
    final combinedGetParamsIO = getChannel.map(
      (channel) => getToken.map(
        (token) => FetchUserParams(
          channel: channel,
          token: token,
        ),
      ),
    );

    // Create TaskEither for fetching user
    final combinedFetchUserTask = IOEither.flatten(combinedGetParamsIO)
        .toTaskEither()
        .map(ref.read(fetchUserProvider).call);

    // Run task and update state
    state = await TaskEither.flatten(combinedFetchUserTask)
        .match(
          (failure) => failure.toAsyncError<Unit>(),
          (success) => AsyncValue.data(success),
        )
        .run();
  }
}
