import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/images.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Images.horse.path,
          width: 400.w,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 24.h),
        Text(
          '1 + 1 = 3',
          style: TextStyle(
            color: Colors.grey[120],
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
