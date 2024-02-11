import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/gen/assets.gen.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final useSimple = Random().nextBool();
    final logo = useSimple ? Assets.images.logoSimple : Assets.images.logo;
    final logoIntro = useSimple ? '简单线条' : '极致色彩';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: logo.image(
            width: ScreenUtil().screenHeight * 0.3,
            height: ScreenUtil().screenHeight * 0.3,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          logoIntro,
          style: TextStyle(color: Colors.white, fontSize: 26.sp),
        ),
      ],
    );
  }
}
