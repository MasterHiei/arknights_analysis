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
        _buildImportButton(context),
        SizedBox(width: 16.w),
        _buildExportButton(context),
      ],
    );
  }

  Widget _buildImportButton(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return FilledButton(
          onPressed: ref.read(persistenceProvider.notifier).import,
          style: ButtonStyle(
            backgroundColor: ButtonState.resolveWith(
              (states) {
                if (states.isNone) {
                  return Colors.green.normal;
                }
                if (states.isPressing) {
                  return Colors.green.lighter;
                }
                if (states.isHovering) {
                  return Colors.green.light;
                }
                return null;
              },
            ),
          ),
          child: Text('导入', style: TextStyle(fontSize: 16.sp)),
        );
      },
    );
  }

  Widget _buildExportButton(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return FilledButton(
          onPressed: ref.read(persistenceProvider.notifier).export,
          style: ButtonStyle(
            backgroundColor: ButtonState.resolveWith(
              (states) {
                if (states.isNone) {
                  return Colors.green.normal;
                }
                if (states.isPressing) {
                  return Colors.green.lighter;
                }
                if (states.isHovering) {
                  return Colors.green.light;
                }
                return null;
              },
            ),
          ),
          child: Text('导出', style: TextStyle(fontSize: 16.sp)),
        );
      },
    );
  }

  Widget _buildRefreshButton() {
    return Consumer(
      builder: (context, ref, _) {
        final lastRefreshTime =
            ref.watch(userFetchProvider.notifier).lastRequestDateTimeString;
        final message =
            lastRefreshTime == null ? null : '上次更新于: $lastRefreshTime';
        return Tooltip(
          message: message,
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
