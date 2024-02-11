import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';
import '../widgets/index.dart';

class GachaStatsPage extends StatelessWidget {
  const GachaStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            LocaleKeys.features_gachaStats_title,
            style: TextStyle(fontSize: 24.sp),
          ).tr(),
          SizedBox(height: 20.h),
          _header,
          SizedBox(height: 20.h),
          const Expanded(child: GachaStatsCard()),
        ],
      ),
    );
  }

  Widget get _header => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GachaStatsFilter(),
          GachaStatsFilterPanel(),
        ],
      );
}
