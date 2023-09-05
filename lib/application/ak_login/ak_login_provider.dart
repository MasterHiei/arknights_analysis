import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time/time.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/constants/constants.dart';
import '../../core/enums/ak_login_type.dart';
import '../../core/exceptions/app_failure.dart';
import '../../domain/user/value_objects/token.dart';
import '../../presentation/core/common/utils/app_loading_indicator.dart';
import '../../presentation/core/routing/router.dart';
import '../user/token_provider.dart';
import '../webview/webview_provider.dart';
import 'ak_login_type_provider.dart';
import 'states/ak_login_state.dart';

final akLoginProvider =
    StateNotifierProvider.autoDispose<AkLoginNotifier, AkLoginState>(
  (ref) {
    return AkLoginNotifier(
      ref.watch(webviewProvider(Constants.akLoginPage)).controller,
      ref.watch(akLoginTypeProvider.notifier),
      ref.watch(tokenProvider.notifier),
    );
  },
);

class AkLoginNotifier extends StateNotifier<AkLoginState> {
  AkLoginNotifier(
    this._controller,
    this._loginTypeProvider,
    this._tokenProvider,
  ) : super(const AkLoginState.init()) {
    _startListening();
  }

  final WebviewController _controller;
  final StateController<AkLoginType> _loginTypeProvider;
  final StateController<Option<Token>> _tokenProvider;

  void go(BuildContext context) => const PortalRoute().go(context);

  void _startListening() {
    _controller.url.listen(_listenUrl);
    _controller.webMessage.listen(_onTokenRecieved);
    _controller.loadUrl(Constants.akLoginPage);
  }

  Future<void> _listenUrl(String url) async {
    final isOfficial = url == Constants.akHomePageOfficial;
    if (isOfficial) {
      await _controller.loadUrl(Constants.asGetTokenOfficial);
      _loginTypeProvider.update((_) => AkLoginType.official);
    }
    final isBilibili = [
      Constants.akHomePageBilibili,
      Constants.akHomePageBilibiliRedirect,
    ].contains(url);
    if (isBilibili) {
      await 1.seconds.delay;
      await _controller.loadUrl(Constants.asGetTokenBilibili);
      _loginTypeProvider.update((_) => AkLoginType.bilibili);
    }

    final isTokenPage = url == Constants.asGetTokenOfficial ||
        url == Constants.asGetTokenBilibili;
    if (isTokenPage) {
      AppLoadingIndicator.show();
      const tokenString =
          'document.getElementsByClassName("token-string")[0].innerHTML';
      const script =
          'window.chrome.webview.postMessage(JSON.parse($tokenString))';
      await _controller.executeScript(script);
    }
  }

  Future<void> _onTokenRecieved(dynamic data) async {
    final token = data as String?;
    if (token == null || token.isEmpty) {
      state = const AkLoginState.failed(
        AppFailure.localizedError('令牌获取失败，请稍后重试。如果问题仍然存在，请与开发人员联系。'),
      );
      await Future.wait([
        _controller.clearCache(),
        _controller.clearCookies(),
      ]);
      await _controller.loadUrl(Constants.akLoginPage);
    } else {
      _tokenProvider.update((_) => optionOf(Token(token)));
      state = const AkLoginState.loggedIn();
    }
    AppLoadingIndicator.dismiss();
  }
}
