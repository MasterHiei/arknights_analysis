import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WebviewNavBarItem extends StatelessWidget {
  const WebviewNavBarItem({
    super.key,
    required this.tooltip,
    required this.icon,
    required this.onPressed,
  });

  final String tooltip;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 64.w,
        height: 48.h,
        child: Tooltip(
          message: tooltip,
          useMousePosition: false,
          child: IconButton(
            icon: Icon(icon, size: 18.sp),
            onPressed: onPressed,
          ),
        ),
      );
}
