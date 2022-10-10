import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/ak_logout/ak_logout_provider.dart';
import '../../application/ak_logout/states/ak_logout_state.dart';
import '../../application/gacha/gacha_provider.dart';
import '../../application/gacha/states/gacha_state.dart';
import '../../application/pane/pane_provider.dart';
import '../../application/user/user_fetch_provider.dart';
import '../../core/exceptions/app_failure.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../gacha_history/gacha_history_page.dart';
import '../gacha_stats/gacha_stats_page.dart';
import '../settings/settings_page.dart';

class PortalPage extends ConsumerStatefulWidget {
  const PortalPage({super.key});

  @override
  ConsumerState<PortalPage> createState() => _PortalPageState();
}

class _PortalPageState extends ConsumerState<PortalPage> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Future<void> onWindowClose() => AppDialog.closeWindow(
        context,
        windowManager: windowManager,
      );

  @override
  Widget build(BuildContext context) {
    _listenUserState();
    _listenGachaState();
    _listenLogoutState();

    final index = ref.watch(paneProvider).selectedIndex;
    return NavigationView(
      pane: _buildPane(index),
      transitionBuilder: (child, animation) => DrillInPageTransition(
        animation: animation,
        child: child,
      ),
    );
  }

  NavigationPane _buildPane(int selected) => NavigationPane(
        selected: selected,
        onChanged: ref.read(paneProvider.notifier).select,
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.chart),
            body: const GachaStatsPage(),
            title: const Text('寻访统计'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.full_history),
            body: const GachaHistoryPage(),
            title: const Text('寻访记录'),
          ),
        ],
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            body: const SettingsPage(),
            title: const Text('设置'),
          ),
          PaneItemSeparator(),
          PaneItemAction(
            icon: const Icon(FluentIcons.sign_out),
            onTap: () => AppDialog.show<void>(
              context,
              title: const Text('确认'),
              content: const Text('确定退出登录吗？'),
              confirmButtonText: '退出',
              confirmButtonColor: Colors.red,
              onConfirmButtonTap: ref.read(akLogoutProvider.notifier).logout,
              closeButtonText: '取消',
              closeButtonColor: Colors.blue,
            ),
            title: const Text('退出登录'),
          ),
        ],
        displayMode: PaneDisplayMode.compact,
      );

  void _listenUserState() {
    ref.listen<AsyncValue<void>>(
      userFetchProvider,
      (_, next) => next.maybeWhen(
        error: (failure, _) async {
          if (failure is AppFailure) {
            await AppFlushBar.show(
              context,
              message: failure.localizedMessage,
              severity: FlushBarSeverity.error,
            );
            failure.maybeWhen(
              invalidToken: () => ref.read(akLogoutProvider.notifier).logout(),
              orElse: () {},
            );
          }
        },
        orElse: () {},
      ),
    );
  }

  void _listenGachaState() {
    ref.listen<GachaState>(
      gachaProvider,
      (_, next) => next.maybeWhen<void>(
        success: () => AppFlushBar.show(
          context,
          message: '数据已更新。',
          severity: FlushBarSeverity.success,
        ),
        failure: (failure) => AppFlushBar.show(
          context,
          message: failure.localizedMessage,
          severity: FlushBarSeverity.error,
        ),
        orElse: () {},
      ),
    );
  }

  void _listenLogoutState() {
    ref.listen<AkLogoutState>(
      akLogoutProvider,
      (_, next) => next.maybeWhen<void>(
        loggedOut: () => ref.read(akLogoutProvider.notifier).go(context),
        orElse: () {},
      ),
    );
  }
}
