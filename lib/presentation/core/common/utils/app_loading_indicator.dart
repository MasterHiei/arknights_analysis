import 'package:bot_toast/bot_toast.dart';

abstract class AppLoadingIndicator {
  const AppLoadingIndicator._();

  static void show() => BotToast.showLoading();

  static void dismiss() => BotToast.closeAllLoading();
}
