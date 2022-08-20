import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/images.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 400.w,
      child: Column(
        children: [
          const Spacer(),
          Image.asset(Images.horse.path, fit: BoxFit.contain),
          SizedBox(height: 24.h),
          Text(
            '1 + 1 = 3',
            style: TextStyle(
              color: Colors.grey[120],
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
