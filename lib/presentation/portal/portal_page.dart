import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/pane/pane_provider.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/routing/route_params.dart';
import '../core/routing/router.dart';
import '../gacha_stats/gacha_stats_page.dart';

class PortalPage extends ConsumerStatefulWidget {
  const PortalPage(this.params, {Key? key}) : super(key: key);

  final PortalParams params;

  @override
  ConsumerState<PortalPage> createState() => _PortalPageState();
}

class _PortalPageState extends ConsumerState<PortalPage> with WindowListener {
  final _webviewController = WebviewController();

  @override
  void initState() {
    windowManager.addListener(this);
    _webviewController.initialize();
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    _webviewController.dispose();
    super.dispose();
  }

  @override
  Future<void> onWindowClose() => AppDialog.show<void>(
        context,
        title: const Text('确认'),
        content: const Text('确定关闭本程序？'),
        confirmButtonText: '关闭',
        confirmButtonColor: Colors.red,
        onConfirmButtonTap: windowManager.destroy,
        closeButtonText: '取消',
        closeButtonColor: Colors.blue,
      );

  @override
  Widget build(BuildContext context) {
    final token = widget.params.token;
    final bodyItems = [
      GachaStatsPage(token),
    ];
    return NavigationView(
      pane: _navigationPane,
      content: Consumer(builder: (_, ref, __) {
        return NavigationBody.builder(
          index: ref.watch(paneProvider).selectedIndex,
          itemBuilder: (_, index) => bodyItems[index],
          itemCount: bodyItems.length,
        );
      }),
    );
  }

  NavigationPane get _navigationPane => NavigationPane(
        onChanged: ref.read(paneProvider.notifier).select,
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.chart),
            title: const Text('寻访统计'),
          ),
        ],
        footerItems: [
          PaneItemAction(
            icon: const Icon(FluentIcons.sign_out),
            onTap: () {
              if (!_webviewController.value.isInitialized) {
                return;
              }
              _webviewController
                  .clearCookies()
                  .then((_) => Routes.splash.go(context));
            },
            title: const Text('退出登录'),
          ),
        ],
        displayMode: PaneDisplayMode.compact,
      );
}
