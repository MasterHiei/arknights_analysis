import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import 'states/splash_state.dart';

part 'splash_provider.g.dart';

@riverpod
class Splash extends _$Splash {
  var _isAnimated = false;
  var _isFetched = false;

  @override
  SplashState build() {
    _startAnimation();
    return SplashState.init();
  }

  void onAnimationEnd() {
    _isAnimated = true;
    if (_isFetched) {
      state = state.copyWith(shouldGo: true);
    }
  }

  void onFetched() {
    _isFetched = true;
    if (_isAnimated) {
      state = state.copyWith(shouldGo: true);
    }
  }

  Future<void> _startAnimation() async {
    await 200.milliseconds.delay;
    state = state.copyWith(opacity: 1);
  }
}
