import 'package:fluent_ui/fluent_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/errors/app_failure.dart';
import '../../core/utils/logger.dart';

part 'webview_provider.g.dart';

@riverpod
class Webview extends _$Webview {
  @override
  Future<Raw<WebviewController>> build({String? initialUrl}) async {
    final controller = WebviewController();
    ref.onDispose(controller.dispose);
    await _initialize(controller, initialUrl);
    return controller;
  }

  Future<void> _initialize(
    WebviewController controller,
    String? initialUrl,
  ) async {
    try {
      await controller.initialize();
      await Future.wait([
        controller.setBackgroundColor(Colors.transparent),
        controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny),
      ]);
      if (initialUrl != null) {
        await controller.loadUrl(initialUrl);
      }
    } catch (e, stackTrace) {
      logger.e(e, error: e, stackTrace: stackTrace);
      throw AppFailure.unexpectedError(e);
    }
  }
}
