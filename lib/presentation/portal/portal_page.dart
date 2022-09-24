import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/ak_logout/ak_logout_provider.dart';
import '../../application/ak_logout/states/ak_logout_state.dart';
import '../../application/pane/pane_provider.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/routing/route_params.dart';
import '../gacha_history/gacha_history_page.dart';
import '../gacha_stats/gacha_stats_page.dart';

class PortalPage extends ConsumerStatefulWidget {
  const PortalPage(this.params, {super.key});

  final PortalParams params;

  @override
  ConsumerState<PortalPage> createState() => _PortalPageState();
}

class _PortalPageState extends ConsumerState<PortalPage> with WindowListener {
  @override
  void initState() {
    windowManager.addListener(this);
    super.initState();
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
    _listenLogoutState();

    final token = widget.params.token;
    final index = ref.watch(paneProvider).selectedIndex;
    return NavigationView(
      pane: _buildPane(index),
      content: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (child, animation) => DrillInPageTransition(
          animation: animation,
          child: child,
        ),
        child: IndexedStack(
          key: ValueKey(index),
          index: index,
          children: [
            GachaStatsPage(token),
            GachaHistoryPage(token),
          ],
        ),
      ),
    );
  }

  NavigationPane _buildPane(int selected) => NavigationPane(
        selected: selected,
        onChanged: ref.read(paneProvider.notifier).select,
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.chart),
            title: const Text('寻访统计'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.full_history),
            title: const Text('寻访记录'),
          ),
        ],
        footerItems: [
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
