import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:window_manager/window_manager.dart';

import '../../routing/router.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    this.title,
    required this.content,
    required this.confirmButtonText,
    required this.confirmButtonColor,
    required this.onConfirmButtonTap,
    required this.closeButtonText,
    required this.closeButtonColor,
    required this.onCloseButtonTap,
  });

  final Widget? title;
  final Widget content;
  final String confirmButtonText;
  final Color confirmButtonColor;
  final void Function() onConfirmButtonTap;
  final String closeButtonText;
  final Color closeButtonColor;
  final void Function() onCloseButtonTap;

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: title,
      content: content,
      actions: [
        FilledButton(
          onPressed: onConfirmButtonTap,
          style: ButtonStyle(
            backgroundColor: ButtonState.resolveWith(
              (states) {
                final color = confirmButtonColor;
                if (color is AccentColor) {
                  if (states.isNone) {
                    return color.normal;
                  }
                  if (states.isPressing) {
                    return color.lighter;
                  }
                  if (states.isHovering) {
                    return color.light;
                  }
                  return null;
                }
                return color;
              },
            ),
          ),
          child: Text(confirmButtonText),
        ),
        FilledButton(
          onPressed: onCloseButtonTap,
          style: ButtonStyle(
            backgroundColor: ButtonState.resolveWith(
              (states) {
                final color = closeButtonColor;
                if (color is AccentColor) {
                  if (states.isNone) {
                    return color.normal;
                  }
                  if (states.isPressing) {
                    return color.lighter;
                  }
                  if (states.isHovering) {
                    return color.light;
                  }
                  return null;
                }
                return color;
              },
            ),
          ),
          child: Text(closeButtonText),
        ),
      ],
    );
  }

  static Future<void> show(
    BuildContext context, {
    Widget? title,
    required Widget content,
    String? confirmButtonText,
    Color? confirmButtonColor,
    required void Function() onConfirmButtonTap,
    String? closeButtonText,
    Color? closeButtonColor,
    void Function()? onCloseButtonTap,
  }) =>
      showDialog(
        context: context,
        builder: (_) => AppDialog(
          title: title,
          content: content,
          confirmButtonText: confirmButtonText ?? '确认',
          confirmButtonColor: confirmButtonColor ?? Colors.blue,
          onConfirmButtonTap: onConfirmButtonTap,
          closeButtonText: closeButtonText ?? '取消',
          closeButtonColor: closeButtonColor ?? Colors.grey[80],
          onCloseButtonTap: onCloseButtonTap ?? router.pop,
        ),
      );

  static Future<void> closeWindow(
    BuildContext context, {
    required WindowManager windowManager,
  }) =>
      AppDialog.show(
        context,
        title: const Text('确认'),
        content: const Text('确定关闭本程序吗？'),
        confirmButtonText: '关闭',
        confirmButtonColor: Colors.red,
        onConfirmButtonTap: windowManager.destroy,
        closeButtonText: '取消',
        closeButtonColor: Colors.blue,
      );

  static Future<void> promptForUpdate(
    BuildContext context, {
    required String browserDownloadUrl,
    required void Function() onDownloadButtonTap,
  }) =>
      AppDialog.show(
        context,
        title: const Text('更新'),
        content: Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: '检测到新版本。\n'),
              const TextSpan(text: '您可以点击下载更新，或从'),
              TextSpan(
                text: '此处',
                style: TextStyle(color: Colors.blue.normal),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrlString(browserDownloadUrl),
              ),
              const TextSpan(text: '手动下载。'),
            ],
          ),
        ),
        confirmButtonText: '下载更新',
        onConfirmButtonTap: onDownloadButtonTap,
      );
}
