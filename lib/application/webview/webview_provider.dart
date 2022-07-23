import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/utils/logger.dart';
import '../../presentation/core/common/widgets/app_flush_bar.dart';

final webviewProvider = ChangeNotifierProvider.autoDispose((ref) {
  final controller = WebviewController();
  ref.onDispose(() => controller.dispose());
  return WebviewNotifier(controller);
});

class WebviewNotifier extends ChangeNotifier {
  WebviewNotifier(this.controller);

  final WebviewController controller;

  Future<void> initialize(
    BuildContext context, {
    required String initialUrl,
  }) async {
    try {
      await controller.initialize();
      await Future.wait([
        controller.setBackgroundColor(Colors.transparent),
        controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny),
        controller.loadUrl(initialUrl),
      ]);
    } catch (e, stackTrace) {
      logger.e(e, e, stackTrace);
      AppFlushBar.show(
        context,
        message: AppFailure.unexpectedError(e).localizedMessage,
        severity: FlushBarSeverity.error,
      );
    } finally {
      notifyListeners();
    }
  }
}
