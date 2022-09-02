import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time/time.dart';

import '../../presentation/core/routing/router.dart';

final splashProvider = ChangeNotifierProvider.autoDispose(
  (_) => SplashNotifier(),
);

class SplashNotifier extends ChangeNotifier {
  SplashNotifier() {
    _startAnimation();
  }

  var _opacity = 0.0;
  double get opacity => _opacity;

  var _animationFinished = false;
  var _fetchingFinished = false;

  void animated(BuildContext context) {
    _animationFinished = true;
    if (_fetchingFinished) {
      _go(context);
    }
  }

  void fetched(BuildContext context) {
    _fetchingFinished = true;
    if (_animationFinished) {
      _go(context);
    }
  }

  void _go(BuildContext context) => Routes.akLogin.go(context);

  Future<void> _startAnimation() async {
    await 200.milliseconds.delay;
    _opacity = 1;
    notifyListeners();
  }
}
