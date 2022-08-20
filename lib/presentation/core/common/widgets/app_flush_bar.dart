import 'package:another_flushbar/flushbar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' show Icons;
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum FlushBarSeverity {
  info(FluentIcons.info_solid, Color(0xff0078d4)),

  warning(FluentIcons.critical_error_solid, Colors.warningPrimaryColor),

  error(FluentIcons.critical_error_solid, Colors.errorPrimaryColor),

  success(Icons.check_circle, Colors.successPrimaryColor);

  const FlushBarSeverity(this.icon, this.color);

  final IconData icon;
  final Color color;
}

class AppFlushBar extends StatelessWidget {
  const AppFlushBar._();

  static Future<void> show(
    BuildContext context, {
    required String message,
    FlushBarSeverity severity = FlushBarSeverity.info,
  }) {
    final flushBar = Flushbar<void>(
      messageText: Text(message, style: TextStyle(fontSize: 16.sp)),
      icon: Icon(severity.icon, size: 24.w, color: severity.color),
      shouldIconPulse: false,
      maxWidth: ScreenUtil().screenWidth * 0.3,
      margin: EdgeInsets.only(bottom: 8.h),
      borderRadius: BorderRadius.circular(2),
      backgroundColor: Colors.white,
      leftBarIndicatorColor: severity.color,
      duration: const Duration(seconds: 2),
      isDismissible: false,
    );
    return flushBar.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
