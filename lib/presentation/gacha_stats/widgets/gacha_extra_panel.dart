import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../application/gacha/gacha_history_persistence_provider.dart';
import '../../../application/gacha/states/gacha_history_persistence_state.dart';
import '../../../application/user/user_provider.dart';
// import '../../../core/utils/launch_url.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../core/common/utils/app_loading_indicator.dart';
import '../../core/common/widgets/app_flush_bar.dart';

final _isProcessing = Provider.autoDispose(
  (ref) {
    final state = ref.watch(gachaHistoryPersistenceProvider);
    return state.maybeMap(
      processing: (_) => true,
      orElse: () => false,
    );
  },
  dependencies: [gachaHistoryPersistenceProvider],
);

class GachaExtraPanel extends ConsumerWidget {
  const GachaExtraPanel(this.token, {super.key});

  final Token token;

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
        final onPressed = ref.watch(_isProcessing)
            ? null
            : ref.read(gachaHistoryPersistenceProvider.notifier).import;
        return FilledButton(
          onPressed: onPressed,
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
        final onPressed = ref.watch(_isProcessing)
            ? null
            : ref.read(gachaHistoryPersistenceProvider.notifier).export;
        return FilledButton(
          onPressed: onPressed,
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
        final userNotifier = userProvider(token).notifier;
        return FilledButton(
          onPressed: () => ref.read(userNotifier).refresh(context),
          child: Text('更新数据', style: TextStyle(fontSize: 16.sp)),
        );
      },
    );
  }

  void _listenPersistenceState(BuildContext context, WidgetRef ref) {
    ref.listen<GachaHistoryPersistenceState>(
      gachaHistoryPersistenceProvider,
      (_, next) {
        next.maybeWhen(
          processing: AppLoadingIndicator.show,
          orElse: AppLoadingIndicator.dismiss,
        );
        final message = next.maybeMap(
          importSuccess: (_) => '导入成功。',
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
}
