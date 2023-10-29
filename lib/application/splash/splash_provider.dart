import 'package:fluent_ui/fluent_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../presentation/core/routing/router.dart';
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

  void onAnimationEnd(BuildContext context) {
    _isAnimated = true;
    if (_isFetched) {
      _go(context);
    }
  }

  void onFetched(BuildContext context) {
    _isFetched = true;
    if (_isAnimated) {
      _go(context);
    }
  }

  void _go(BuildContext context) => const AkLoginRoute().go(context);

  Future<void> _startAnimation() async {
    await 200.milliseconds.delay;
    state = state.copyWith(opacity: 1);
  }
}
