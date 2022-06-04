import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gacha/gacha_provider.dart';
import '../../../application/gacha/states/gacha_state.dart';
import '../../../domain/user/user.dart';
import '../../core/common/widgets/app_flush_bar.dart';

class PortalGachaStatsView extends ConsumerWidget {
  const PortalGachaStatsView(this.user, {Key? key}) : super(key: key);

  final User user;

  AutoDisposeStateNotifierProvider<GachaNotifier, GachaState>
      get _gachaProvider => gachaProvider(user);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    return ref.watch(_gachaProvider).map(
          fetching: (state) {
            double? value;
            if (state.total != null) {
              value = (state.current / state.total!) * 100;
            }
            return _buildProgressBar(
              value: value,
              label: '正在获取第${state.current}页数据',
            );
          },
          success: (_) => const _StatsView(),
          failure: (_) => const _ErrorView(),
        );
  }

  Widget _buildProgressBar({
    double? value,
    String label = '',
  }) =>
      SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ProgressBar(value: value),
            SizedBox(height: 12.h),
            Text(label, style: TextStyle(color: Colors.grey[100])),
          ],
        ),
      );

  void _listenState(BuildContext context, WidgetRef ref) {
    ref.listen<GachaState>(
      _gachaProvider,
      (_, next) => next.maybeWhen(
        failure: (failure) => AppFlushBar.showError(
          context,
          message: failure.localizedMessage,
        ),
        orElse: () {
          return null;
        },
      ),
    );
  }
}

class _StatsView extends StatelessWidget {
  const _StatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
