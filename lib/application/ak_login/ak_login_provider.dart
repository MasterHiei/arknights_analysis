import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/constants/constants.dart';
import '../../domain/user/value_objects/token.dart';
import '../../presentation/core/routing/route_params.dart';
import '../../presentation/core/routing/router.dart';
import 'states/ak_login_state.dart';

final akLoginProvider =
    StateNotifierProvider.autoDispose<AkLoginNotifier, AkLoginState>(
  (_) => AkLoginNotifier(),
);

class AkLoginNotifier extends StateNotifier<AkLoginState> {
  AkLoginNotifier() : super(const AkLoginState.init());

  var _currentState = LoadingState.none;

  late final Token _token;

  void startListening(WebviewController controller) {
    controller.url.listen((url) async {
      final isHomePage = url == akHomePage;
      if (isHomePage) {
        await controller.loadUrl(asGetToken);
      }

      final isCompleted = _currentState == LoadingState.navigationCompleted;
      final isTokenPage = url == asGetToken;
      if (isCompleted && isTokenPage) {
        await _postToken(controller);
      }
    });
    controller.loadingState.listen((state) => _currentState = state);
    controller.webMessage.listen(_onTokenRecieved);
  }

  void go(BuildContext context) => Routes.user.go(
        context,
        extra: RouteParams.user(token: _token),
      );

  Future<void> _postToken(WebviewController controller) async {
    await EasyLoading.show(maskType: EasyLoadingMaskType.black);
    const data = 'document.getElementsByTagName("pre")[0].innerHTML';
    const script = 'window.chrome.webview.postMessage(JSON.parse($data))';
    await controller.executeScript(script);
  }

  Future<void> _onTokenRecieved(Map<dynamic, dynamic> data) async {
    final token = data['data']?['token'] as String? ?? '';
    if (token.isNotEmpty) {
      await EasyLoading.dismiss();
      _token = Token(token);
      state = const AkLoginState.shouldGo();
    }
  }
}
