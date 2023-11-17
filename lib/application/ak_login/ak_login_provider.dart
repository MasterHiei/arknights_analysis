import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/constants/constants.dart';
import '../../core/enums/ak_login_type.dart';
import '../../core/exceptions/app_failure.dart';
import '../../domain/user/value_objects/token.dart';
import '../../presentation/core/common/utils/app_loading_indicator.dart';
import '../user/logged_in_user_info_provider.dart';
import '../webview/webview_provider.dart';
import 'states/ak_login_state.dart';

part 'ak_login_provider.g.dart';

@riverpod
class AkLogin extends _$AkLogin {
  @override
  AkLoginState build() {
    ref
        .watch(webviewProvider(initialUrl: Constants.akLoginPage))
        .whenData(_startListening);
    return const AkLoginState.init();
  }

  void _startListening(WebviewController controller) {
    controller.url.listen((url) => _listenUrl(controller, url));
    controller.webMessage.listen((data) => _onTokenRecieved(controller, data));
    controller.loadUrl(Constants.akLoginPage);
  }

  Future<void> _listenUrl(WebviewController controller, String url) async {
    final isOfficial = url == Constants.akHomePageOfficial;
    if (isOfficial) {
      await controller.loadUrl(Constants.asGetTokenOfficial);
      ref
          .read(loggedInUserInfoProvider.notifier)
          .updateLoginType(AkLoginType.official);
    }

    final isBilibili = [
      Constants.akHomePageBilibili,
      Constants.akHomePageBilibiliRedirect,
    ].contains(url);
    if (isBilibili) {
      await 1.seconds.delay;
      await controller.loadUrl(Constants.asGetTokenBilibili);
      ref
          .read(loggedInUserInfoProvider.notifier)
          .updateLoginType(AkLoginType.bilibili);
    }

    final isTokenPage = url == Constants.asGetTokenOfficial ||
        url == Constants.asGetTokenBilibili;
    if (isTokenPage) {
      AppLoadingIndicator.show();
      const tokenString =
          'document.getElementsByClassName("token-string")[0].innerHTML';
      const script =
          'window.chrome.webview.postMessage(JSON.parse($tokenString))';
      await controller.executeScript(script);
    }
  }

  Future<void> _onTokenRecieved(
    WebviewController controller,
    dynamic data,
  ) async {
    final token = data as String?;
    if (token == null || token.isEmpty) {
      state = const AkLoginState.failed(
        AppFailure.localizedError(
          '令牌获取失败，请稍后重试。如果问题仍然存在，请与开发人员联系。',
        ),
      );
      await Future.wait([
        controller.clearCache(),
        controller.clearCookies(),
      ]);
      await controller.loadUrl(Constants.akLoginPage);
    } else {
      ref.read(loggedInUserInfoProvider.notifier).updateToken(Token(token));
      state = const AkLoginState.loggedIn();
    }
    AppLoadingIndicator.dismiss();
  }
}
