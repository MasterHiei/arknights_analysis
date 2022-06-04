import 'package:another_flushbar/flushbar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFlushBar extends StatelessWidget {
  const AppFlushBar._({Key? key}) : super(key: key);

  static Future<void> showError(
    BuildContext context, {
    required String message,
  }) {
    final flushBar = Flushbar<void>(
      messageText: Text(
        message,
        style: TextStyle(fontSize: 16.sp),
      ),
      icon: Icon(
        FluentIcons.critical_error_solid,
        size: 24.w,
        color: Colors.errorPrimaryColor,
      ),
      shouldIconPulse: false,
      maxWidth: ScreenUtil().screenWidth * 0.3,
      margin: EdgeInsets.only(bottom: 24.h),
      borderRadius: BorderRadius.circular(2),
      backgroundColor: Colors.white,
      leftBarIndicatorColor: Colors.errorPrimaryColor,
      duration: const Duration(seconds: 3),
      isDismissible: false,
    );
    return flushBar.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
