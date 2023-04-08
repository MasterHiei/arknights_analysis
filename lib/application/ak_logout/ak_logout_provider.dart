import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../presentation/core/routing/router.dart';
import 'states/ak_logout_state.dart';

final akLogoutProvider =
    StateNotifierProvider.autoDispose<AkLogoutNotifier, AkLogoutState>((ref) {
  final controller = WebviewController();
  ref.onDispose(controller.dispose);
  return AkLogoutNotifier(controller);
});

class AkLogoutNotifier extends StateNotifier<AkLogoutState> {
  AkLogoutNotifier(this._controller) : super(const AkLogoutState.init());

  final WebviewController _controller;

  void go(BuildContext context) => const SplashRoute().go(context);

  Future<void> logout() async {
    await _controller.initialize();
    await Future.wait([
      _controller.clearCache(),
      _controller.clearCookies(),
    ]);
    state = const AkLogoutState.loggedOut();
  }
}
