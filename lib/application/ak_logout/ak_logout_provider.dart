import 'package:fluent_ui/fluent_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../presentation/core/routing/routes.dart';
import 'states/ak_logout_state.dart';

part 'ak_logout_provider.g.dart';

@riverpod
class AkLogout extends _$AkLogout {
  late final WebviewController _controller;

  @override
  AkLogoutState build() {
    _controller = WebviewController();
    ref.onDispose(_controller.dispose);
    return const AkLogoutState.init();
  }

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
