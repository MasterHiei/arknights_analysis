import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '../../../../core/routing/router.dart';
import '../../../../generated/locale_keys.g.dart';

class AppAlert extends StatelessWidget {
  const AppAlert._({
    required this.title,
    required this.content,
    required this.buttonText,
    required this.buttonColor,
    required this.onTap,
  });

  final Widget? title;
  final Widget content;
  final String buttonText;
  final Color buttonColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      title: title,
      content: content,
      actions: [
        FilledButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: ButtonState.resolveWith(
              (states) {
                final color = buttonColor;
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
          child: Text(buttonText),
        ),
      ],
    );
  }

  static Future<void> show(
    BuildContext context, {
    Widget? title,
    required Widget content,
    String? buttonText,
    Color? buttonColor,
    void Function()? onTap,
  }) =>
      showDialog(
        context: context,
        builder: (_) => AppAlert._(
          title: title ?? const Text(LocaleKeys.dialog_title).tr(),
          content: content,
          buttonText: buttonText ?? LocaleKeys.dialog_confirm.tr(),
          buttonColor: buttonColor ?? Colors.blue,
          onTap: onTap ?? router.pop,
        ),
      );
}
