import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsActionButton extends StatelessWidget {
  const SettingsActionButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: ButtonState.resolveWith(
            (states) => EdgeInsets.symmetric(
              vertical: 8.h,
              horizontal: 12.w,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
