import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../application/diamonds/diamond_history_provider.dart';
import '../../../application/gacha/gacha_pool_selector_provider.dart';
import '../../../application/gacha/gacha_stats_provider.dart';
import '../../../application/persistence/persistence_provider.dart';
import '../../../application/persistence/states/persistence_state.dart';
import '../../../application/user/user_fetch_provider.dart';
import '../../../core/enums/gacha_data_management_type.dart';
import '../../core/common/utils/app_loading_indicator.dart';
import '../../core/common/widgets/app_flush_bar.dart';

class GachaStatsExtraPanel extends ConsumerWidget {
  const GachaStatsExtraPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenPersistenceState(context, ref);

    return Row(
      children: [
        _buildRefreshButton(),
        SizedBox(width: 16.w),
        const _DataManagementMenuFlyout(),
      ],
    );
  }

  Widget _buildRefreshButton() {
    return Consumer(
      builder: (context, ref, _) {
        final lastFetchTime =
            ref.watch(userFetchProvider.notifier).lastRequestDateTimeString;
        return Tooltip(
          message: lastFetchTime == null ? null : '上次更新于: $lastFetchTime',
          child: FilledButton(
            onPressed: () =>
                ref.read(userFetchProvider.notifier).refresh(context),
            child: Text('更新数据', style: TextStyle(fontSize: 16.sp)),
          ),
        );
      },
    );
  }

  void _listenPersistenceState(BuildContext context, WidgetRef ref) =>
      ref.listen<PersistenceState>(
        persistenceProvider,
        (_, next) {
          next.maybeWhen(
            processing: AppLoadingIndicator.show,
            orElse: AppLoadingIndicator.dismiss,
          );
          final message = next.maybeMap(
            importSuccess: (_) {
              ref.read(gachaPoolSelectorProvider.notifier).refresh();
              ref.read(gachaStatsProvider.notifier).refresh();
              ref.invalidate(diamondHistoryProvider);
              return '导入成功。';
            },
            importFailure: (state) => state.failure.localizedMessage,
            exportSuccess: (state) {
              launchUrl(state.file.absolute.parent.uri);
              return '导出成功。';
            },
            exportFailure: (state) => state.failure.localizedMessage,
            orElse: () {},
          );
          if (message != null) {
            AppFlushBar.show(
              context,
              message: message,
              severity: FlushBarSeverity.success,
            );
          }
        },
      );
}

class _DataManagementMenuFlyout extends ConsumerStatefulWidget {
  const _DataManagementMenuFlyout();

  @override
  ConsumerState<_DataManagementMenuFlyout> createState() =>
      _DataManagementMenuFlyoutState();
}

class _DataManagementMenuFlyoutState
    extends ConsumerState<_DataManagementMenuFlyout> {
  final _controller = FlyoutController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlyoutTarget(
      controller: _controller,
      child: FilledButton(
        onPressed: () => _controller.showFlyout<void>(
          builder: (_) {
            return MenuFlyout(
              items: GachaDataManagementType.values
                  .map(
                    (item) => MenuFlyoutItem(
                      text: Text(item.label),
                      onPressed: () => item.onPressed(ref),
                    ),
                  )
                  .toList(),
            );
          },
          autoModeConfiguration: FlyoutAutoConfiguration(
            preferredMode: FlyoutPlacementMode.bottomCenter,
          ),
        ),
        child: Text('数据管理', style: TextStyle(fontSize: 16.sp)),
      ),
    );
  }
}
