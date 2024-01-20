import 'package:bot_toast/bot_toast.dart';

abstract class AppLoadingIndicator {
  const AppLoadingIndicator._();

  static CancelFunc? _cancel;

  static void show() {
    if (_cancel != null) {
      _cancel?.call();
    }
    _cancel = BotToast.showLoading();
  }

  static void dismiss() => _cancel?.call();
}
