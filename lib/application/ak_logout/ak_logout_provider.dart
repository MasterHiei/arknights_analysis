import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../presentation/core/routing/router.dart';
import '../webview/webview_provider.dart';
import 'states/ak_logout_state.dart';

final akLogoutProvider =
    StateNotifierProvider.autoDispose<AkLogoutNotifier, AkLogoutState>((ref) {
  final controller = ref.watch(webviewProvider(none())).controller;
  return AkLogoutNotifier(controller);
});

class AkLogoutNotifier extends StateNotifier<AkLogoutState> {
  AkLogoutNotifier(this._controller) : super(const AkLogoutState.init());

  final WebviewController _controller;

  void go(BuildContext context) => Routes.splash.go(context);

  Future<void> logout() async {
    await Future.wait([
      _controller.clearCache(),
      _controller.clearCookies(),
    ]);
    state = const AkLogoutState.loggedOut();
  }
}
