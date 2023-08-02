import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/utils/logger.dart';

final webviewProvider = ChangeNotifierProvider.autoDispose.family(
  (ref, String initialUrl) {
    final controller = WebviewController();
    ref.onDispose(controller.dispose);
    return WebviewNotifier(controller, initialUrl);
  },
);

class WebviewNotifier extends ChangeNotifier {
  WebviewNotifier(this.controller, this.initialUrl) {
    _initialize();
  }

  final WebviewController controller;
  final String initialUrl;

  Future<void> _initialize() async {
    try {
      await controller.initialize();
      await Future.wait([
        controller.setBackgroundColor(Colors.transparent),
        controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny),
      ]);
      await controller.loadUrl(initialUrl);
    } catch (e, stackTrace) {
      logger.e(e, error: e, stackTrace: stackTrace);
      AppFailure.unexpectedError(e);
    } finally {
      notifyListeners();
    }
  }
}
