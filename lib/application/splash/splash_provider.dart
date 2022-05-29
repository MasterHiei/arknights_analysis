import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  void go(BuildContext context) => Routes.akLogin.go(context);

  Future<void> _startAnimation() =>
      Future.delayed(const Duration(milliseconds: 200), () {
        _opacity = 1;
        notifyListeners();
      });
}
