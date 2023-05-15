import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/user/user_fetch_provider.dart';
import '../core/common/widgets/app_error_view.dart';
import 'widgets/index.dart';

class GachaStatsPage extends StatelessWidget {
  const GachaStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('寻访统计', style: TextStyle(fontSize: 24.sp)),
          SizedBox(height: 20.h),
          _header,
          SizedBox(height: 20.h),
          Expanded(child: _buildStatesView()),
        ],
      ),
    );
  }

  Widget get _header => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GachaPoolSelector(),
          GachaStatsExtraPanel(),
        ],
      );

  Widget _buildStatesView() {
    return Consumer(
      builder: (_, ref, __) => ref.watch(userFetchProvider).when(
            data: (_) => const GachaStatsView(),
            error: (_, __) => const AppErrorView(),
            loading: () => const SizedBox.expand(
              child: Center(child: ProgressRing()),
            ),
          ),
    );
  }
}
