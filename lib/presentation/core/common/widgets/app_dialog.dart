import 'package:fluent_ui/fluent_ui.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.confirmButtonText,
    required this.confirmButtonColor,
    required this.onConfirmButtonTap,
    required this.closeButtonText,
    required this.closeButtonColor,
    required this.onCloseButtonTap,
  }) : super(key: key);

  final Widget title;
  final Widget content;
  final String confirmButtonText;
  final Color confirmButtonColor;
  final void Function() onConfirmButtonTap;
  final String closeButtonText;
  final Color closeButtonColor;
  final void Function() onCloseButtonTap;

  static Future<T?> show<T>(
    BuildContext context, {
    required Widget title,
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
          onCloseButtonTap: onCloseButtonTap ?? () => Navigator.pop(context),
        ),
      );

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
}
