import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/constants/constants.dart';
import '../../core/exceptions/app_failure.dart';
import '../../domain/user/value_objects/token.dart';
import '../../presentation/core/common/utils/app_loading_indicator.dart';
import '../../presentation/core/routing/route_params.dart';
import '../../presentation/core/routing/router.dart';
import '../webview/webview_provider.dart';
import 'states/ak_login_state.dart';

final akLoginProvider =
    StateNotifierProvider.autoDispose<AkLoginNotifier, AkLoginState>(
  (ref) {
    final initialUrl = optionOf(akLoginPage);
    final controller = ref.watch(webviewProvider(initialUrl)).controller;
    return AkLoginNotifier(controller);
  },
);

class AkLoginNotifier extends StateNotifier<AkLoginState> {
  AkLoginNotifier(this._controller) : super(const AkLoginState.init()) {
    _startListening();
  }

  final WebviewController _controller;

  var _currentState = LoadingState.none;

  late final Token _token;
  void go(BuildContext context) => Routes.portal.go(
        context,
        extra: RouteParams.portal(token: _token),
      );

  void _startListening() {
    _controller.url.listen(_onUrlChanged);
    _controller.loadingState.listen(_onStateChanged);
    _controller.webMessage.listen(_onTokenRecieved);
    _controller.loadUrl(akLoginPage);
  }

  Future<void> _onUrlChanged(String url) async {
    final isHomePage = url == akHomePage;
    if (isHomePage) {
      await _controller.loadUrl(asGetToken);
    }

    final isCompleted = _currentState == LoadingState.navigationCompleted;
    final isTokenPage = url == asGetToken;
    if (isCompleted && isTokenPage) {
      AppLoadingIndicator.show();
      const data = 'document.getElementsByTagName("pre")[0].innerHTML';
      const script = 'window.chrome.webview.postMessage(JSON.parse($data))';
      await _controller.executeScript(script);
    }
  }

  void _onStateChanged(LoadingState state) => _currentState = state;

  Future<void> _onTokenRecieved(dynamic data) async {
    final status = data['status'] as int? ?? -1;
    if (status != 0) {
      final message = data['msg'] as String? ?? '登录已过期，请重新登录。';
      state = AkLoginState.failed(AppFailure.localizedError(message));
      await _controller.loadUrl(akLoginPage);
      AppLoadingIndicator.dismiss();
      return;
    }

    final token = data['data']?['token'] as String? ?? '';
    if (token.isNotEmpty) {
      _token = Token(token);
      state = const AkLoginState.loggedIn();
      AppLoadingIndicator.dismiss();
      return;
    }
  }
}
