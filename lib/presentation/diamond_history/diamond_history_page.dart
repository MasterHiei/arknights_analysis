import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/diamonds/diamond_provider.dart';
import '../core/common/widgets/app_error_view.dart';
import 'widgets/index.dart';

class DiamondHistoryPage extends ConsumerWidget {
  const DiamondHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(diamondProvider).map(
          fetching: (state) {
            late final double? value;
            final total = state.total ?? 0;
            if (total == 0) {
              value = 100;
            } else {
              value = (state.current / state.total!) * 100;
            }
            return _buildProgressBar(
              value: value,
              label: '正在获取第${state.current}页数据',
            );
          },
          failure: (_) => const AppErrorView(),
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
