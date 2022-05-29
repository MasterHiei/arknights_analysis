import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/constants/constants.dart';

final akLoginProvider = ChangeNotifierProvider.autoDispose(
  (ref) => AkLoginNotifier(),
);

class AkLoginNotifier extends ChangeNotifier {
  var _currentState = LoadingState.none;

  var _hasToken = false;

  void startListening(WebviewController controller) {
    controller.url.listen((url) async {
      if (_hasToken) {
        return;
      }

      final isHomePage = url == akHomePage;
      final isCompleted = _currentState == LoadingState.navigationCompleted;
      if (isCompleted && isHomePage) {
        await controller.loadUrl(asGetToken);
      }
      final isTokenPage = url == asGetToken;
      if (isCompleted && isTokenPage) {
        await _postToken(controller);
      }
    });
    controller.loadingState.listen((state) => _currentState = state);
    controller.webMessage.listen(_onTokenRecieved);
  }

  Future<void> _postToken(WebviewController controller) async {
    const data = 'document.getElementsByTagName("pre")[0].innerHTML';
    const script = 'window.chrome.webview.postMessage(JSON.parse($data))';
    await controller.executeScript(script);
  }

  void _onTokenRecieved(Map<dynamic, dynamic> data) {
    if (_hasToken) {
      return;
    }

    final token = data['data']?['token'] as String? ?? '';
    print(token);
    if (token.isNotEmpty) {
      _hasToken = true;
    }
  }
}
