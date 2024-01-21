import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../application/persistence/persistence_provider.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/enums/gacha_data_management_type.dart';
import '../../../../core/widgets/app_loading_indicator.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../infrastructure/core/extensions/date_time_formatter.dart';
import '../../../../presentation/core/common/widgets/app_flush_bar.dart';
import '../../../persistence/presentation/providers/refresh_persistence_data_provider.dart';
import '../providers/filter_gacha_stats_provider.dart';
import '../providers/gacha_stats_filter_provider.dart';

class GachaStatsFilterPanel extends ConsumerWidget {
  const GachaStatsFilterPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenPersistenceState(context, ref);

    return Row(
      children: [
        _buildRefreshButton(context),
        SizedBox(width: 16.w),
        const _DataManagementMenuFlyout(),
      ],
    );
  }

  Widget _buildRefreshButton(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final tipMessage = ref
            .read(refreshPersistenceDataProvider.notifier)
            .lastRequestDateTime
            .match(
              () => '',
              (dateTime) => '上次更新于: ${dateTime.yMMMdHmsString}',
            );
        return Tooltip(
          message: tipMessage,
          useMousePosition: false,
          child: FilledButton(
            onPressed: () =>
                ref.read(refreshPersistenceDataProvider.notifier).call(
                      onFailure: () => _showUpdateTooFrequentlyNotice(context),
                    ),
            child: Text('更新数据', style: TextStyle(fontSize: 16.sp)),
          ),
        );
      },
    );
  }

  void _listenPersistenceState(BuildContext context, WidgetRef ref) =>
      ref.listen(
        persistenceProvider,
        (_, next) {
          next.maybeWhen(
            processing: AppLoadingIndicator.show,
            orElse: AppLoadingIndicator.dismiss,
          );
          final message = next.maybeMap(
            importSuccess: (_) {
              ref.invalidate(gachaStatsFilterProvider);
              ref.invalidate(filterGachaStatsProvider());
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

  void _showUpdateTooFrequentlyNotice(BuildContext context) => AppFlushBar.show(
        context,
        message: LocaleKeys.features_gachaStats_updateTooFrequently.tr(
          namedArgs: {
            'minutes': '${Constants.minRequestInterval.inMinutes}',
          },
        ),
        severity: FlushBarSeverity.warning,
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
