import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:window_manager/window_manager.dart';

import '../../../../core/routing/router.dart';
import '../../../../features/auth/presentation/providers/ak_logout_provider.dart';
import '../../../../generated/locale_keys.g.dart';

class AppDialog extends StatelessWidget {
  const AppDialog._({
    required this.title,
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
        builder: (_) => AppDialog._(
          title: title ?? const Text(LocaleKeys.dialog_title).tr(),
          content: content,
          confirmButtonText:
              confirmButtonText ?? LocaleKeys.dialog_confirm.tr(),
          confirmButtonColor: confirmButtonColor ?? Colors.blue,
          onConfirmButtonTap: onConfirmButtonTap,
          closeButtonText: closeButtonText ?? LocaleKeys.dialog_cancel.tr(),
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
        content: const Text(LocaleKeys.app_close_dialog_content).tr(),
        confirmButtonText: LocaleKeys.app_close_dialog_confirm.tr(),
        confirmButtonColor: Colors.red,
        onConfirmButtonTap: windowManager.destroy,
      );

  static Future<void> logout(BuildContext context, WidgetRef ref) =>
      AppDialog.show(
        context,
        content: const Text(LocaleKeys.app_logout_dialog_content).tr(),
        confirmButtonText: LocaleKeys.app_logout_dialog_confirm.tr(),
        confirmButtonColor: Colors.red,
        onConfirmButtonTap: ref.read(akLogoutProvider.notifier).logout,
      );

  static Future<void> promptForUpdate(
    BuildContext context, {
    required String browserDownloadUrl,
    required void Function() onDownloadButtonTap,
  }) =>
      AppDialog.show(
        context,
        title: const Text(LocaleKeys.app_update_dialog_title).tr(),
        content: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${LocaleKeys.app_update_dialog_hasNewVersion.tr()}\n',
              ),
              TextSpan(
                text: LocaleKeys.app_update_dialog_automatically.tr(),
              ),
              TextSpan(
                text: LocaleKeys.app_update_dialog_urlPlaceholder.tr(),
                style: TextStyle(color: Colors.blue.normal),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrlString(browserDownloadUrl),
              ),
              TextSpan(
                text: LocaleKeys.app_update_dialog_manually.tr(),
              ),
            ],
          ),
        ),
        confirmButtonText: LocaleKeys.app_update_dialog_confirm.tr(),
        onConfirmButtonTap: onDownloadButtonTap,
      );

  static Future<void> retry(
    BuildContext context, {
    required Widget title,
    required Widget content,
    required void Function() onRetry,
    String? closeButtonText,
    void Function()? onCancel,
  }) =>
      AppDialog.show(
        context,
        title: title,
        content: content,
        confirmButtonText: LocaleKeys.dialog_retry.tr(),
        confirmButtonColor: Colors.red,
        onConfirmButtonTap: onRetry,
        closeButtonText: closeButtonText,
        onCloseButtonTap: onCancel,
      );
}
