import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_error_view.dart';
import '../providers/refresh_diamond_history_provider.dart';
import '../widgets/index.dart';

class DiamondHistoryPage extends ConsumerWidget {
  const DiamondHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(refreshDiamondHistoryProvider).map(
          fetching: (state) {
            final total = state.total;
            final value = switch (total) {
              0 => 100.0,
              _ => (state.current / total) * 100,
            };
            return _buildProgressBar(
              value: value,
              label: '正在获取第${state.current}页数据',
            );
          },
          failure: (state) => AppErrorView(
            message: state.failure.localizedMessage,
          ),
          success: (_) => const DiamondHistoryTable(),
        );
  }

  Widget _buildProgressBar({
    double? value,
    String label = '',
  }) =>
      SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProgressBar(value: value),
            SizedBox(height: 12.h),
            Text(label, style: TextStyle(color: Colors.grey[100])),
          ],
        ),
      );
}
