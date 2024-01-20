import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../../../core/common/value_objects/token.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/enums/user_channel.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/usecases/cache_token.dart';
import '../../domain/usecases/cache_user_channel.dart';
import 'states/ak_login_state.dart';

part 'ak_login_provider.g.dart';

@riverpod
class AkLogin extends _$AkLogin {
  @override
  AkLoginState build() => const AkLoginState.init();

  Future<void> subscribeUrl(WebviewController controller, String url) async {
    // For official account
    final isOfficial = url == Constants.akHomePageOfficial;
    if (isOfficial) {
      state = const AkLoginState.loggingIn();
      await controller.loadUrl(Constants.asGetTokenOfficial);
      const params = CacheUserChannelParams(channel: UserChannel.official);
      ref.read(cacheUserChannelProvider).call(params);
    }

    // For bilibili account
    final isBilibili = [
      Constants.akHomePageBilibili,
      Constants.akHomePageBilibiliRedirect,
    ].contains(url);
    if (isBilibili) {
      state = const AkLoginState.loggingIn();
      await 1.seconds.delay;
      await controller.loadUrl(Constants.asGetTokenBilibili);
      const params = CacheUserChannelParams(channel: UserChannel.bilibili);
      ref.read(cacheUserChannelProvider).call(params);
    }

    // Post token after login
    final isTokenPage = [
      Constants.asGetTokenOfficial,
      Constants.asGetTokenBilibili,
    ].contains(url);
    if (isTokenPage) {
      const tokenString =
          'document.getElementsByClassName("token-string")[0].innerHTML';
      const script =
          'window.chrome.webview.postMessage(JSON.parse($tokenString))';
      await controller.executeScript(script);
    }
  }

  Future<void> subscribeWebMessage(dynamic data) async {
    final token = Token(data as String?);
    if (token.isValid()) {
      final params = CacheTokenParams(token: token);
      state = await ref
          .read(cacheTokenProvider)
          .call(params)
          .match(
            AkLoginState.failed,
            (_) => const AkLoginState.loggedIn(),
          )
          .run();
    } else {
      const failure = AppFailure.localizedError(
        '令牌获取失败，请稍后重试。如果问题仍然存在，请与开发人员联系。',
      );
      state = const AkLoginState.failed(failure);
    }
  }
}
