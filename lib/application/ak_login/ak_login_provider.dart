import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time/time.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/constants/constants.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/types/types.dart';
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

  var _currentUrl = '';

  late final Token _token;
  void go(BuildContext context) => Routes.portal.go(
        context,
        extra: RouteParams.portal(token: _token),
      );

  void _startListening() {
    _controller.url.listen((url) => _currentUrl = url);
    _controller.loadingState.listen((state) {
      if (state == LoadingState.navigationCompleted) {
        _postToken();
      }
    });
    _controller.webMessage.listen(_onTokenRecieved);
    _controller.loadUrl(akLoginPage);
  }

  Future<void> _postToken() async {
    final url = _currentUrl;
    final isOfficial = url == akHomePageOfficial;
    if (isOfficial) {
      await _controller.loadUrl(asGetTokenOfficial);
    }
    final isBilibili =
        [akHomePageBilibili, akHomePageBilibiliRedirect].contains(url);
    if (isBilibili) {
      await 1.seconds.delay;
      await _controller.loadUrl(asGetTokenBilibili);
    }

    final isTokenPage = url == asGetTokenOfficial || url == asGetTokenBilibili;
    if (isTokenPage) {
      AppLoadingIndicator.show();
      const data = 'document.getElementsByTagName("pre")[0].innerHTML';
      const script = 'window.chrome.webview.postMessage(JSON.parse($data))';
      await _controller.executeScript(script);
    }
  }

  Future<void> _onTokenRecieved(dynamic data) async {
    final json = data as Json?;
    final code = json?['code'] as int?;
    switch (code) {
      case 0:
        final token = (json?['data'] as Json?)?['content'] as String? ?? '';
        if (token.isNotEmpty) {
          _token = Token(token);
          state = const AkLoginState.loggedIn();
        }
        break;

      default:
        final message =
            json?['msg'] as String? ?? '令牌获取失败，请稍后重试。如果问题仍然存在，请与开发人员联系。\n$data';
        state = AkLoginState.failed(AppFailure.localizedError(message));
        await Future.wait([
          _controller.clearCache(),
          _controller.clearCookies(),
        ]);
        await _controller.loadUrl(akLoginPage);
        break;
    }
    AppLoadingIndicator.dismiss();
  }
}
