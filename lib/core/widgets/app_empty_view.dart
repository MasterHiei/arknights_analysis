import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppEmptyView extends StatelessWidget {
  const AppEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          FaIcon(
            FontAwesomeIcons.boxOpen,
            size: 88.w,
            color: Colors.grey[120],
          ),
          SizedBox(height: 16.h),
          Text(
            '暂无数据',
            style: TextStyle(
              color: Colors.grey[120],
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
