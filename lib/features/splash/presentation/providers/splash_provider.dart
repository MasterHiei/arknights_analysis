import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../game_data/domain/usecases/fetch_game_data.dart';
import 'states/splash_state.dart';

part 'splash_provider.g.dart';

@riverpod
class Splash extends _$Splash {
  @override
  SplashState build() {
    _startAnimation();
    return const SplashState();
  }

  Future<void> prefetch() {
    state = state.copyWith(
      isFetching: true,
      failureOption: const None(),
    );

    const params = FetchGameDataParams();
    final task = ref.read(fetchGameDataProvider).call(params).match(
          (failure) => state = state.copyWith(
            failureOption: some(failure),
          ),
          (_) => state = state.copyWith(
            isFetching: false,
            shouldTransition: true,
          ),
        );
    return task.run();
  }

  Future<void> _startAnimation() async {
    await 200.milliseconds.delay;
    state = state.copyWith(startAnimation: true);
  }
}
