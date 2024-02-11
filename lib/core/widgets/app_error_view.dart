import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/gen/assets.gen.dart';

class AppErrorView extends StatelessWidget {
  const AppErrorView({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.horse.image(fit: BoxFit.contain),
          SizedBox(height: 24.h),
          Text(
            message ?? '1 + 1 = 3',
            style: TextStyle(
              color: Colors.grey[120],
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
