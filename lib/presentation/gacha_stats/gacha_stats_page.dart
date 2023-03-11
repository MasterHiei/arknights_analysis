import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/user/user_fetch_provider.dart';
import '../core/common/widgets/app_error_view.dart';
import 'widgets/index.dart';

class GachaStatsPage extends ConsumerWidget {
  const GachaStatsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(userFetchProvider).when(
          data: (_) => Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('寻访统计', style: TextStyle(fontSize: 24.sp)),
                SizedBox(height: 20.h),
                _header,
                SizedBox(height: 20.h),
                const Expanded(child: GachaStatsView()),
              ],
            ),
          ),
          error: (_, __) => const AppErrorView(),
          loading: () => const SizedBox.expand(
            child: Center(child: ProgressRing()),
          ),
        );
  }

  Widget get _header => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const GachaPoolSelector(),
          SizedBox(width: 80.w),
          const GachaStatsExtraPanel(),
        ],
      );
}
