import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/pane/pane_provider.dart';
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
  Future<void> onWindowClose() async {
    final isPreventClose = await windowManager.isPreventClose();
    if (!isPreventClose) {
      return;
    }
    await showDialog(
      context: context,
      builder: (context) {
        return ContentDialog(
          title: const Text('确认'),
          content: const Text('确定关闭本程序？'),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('取消'),
            ),
            FilledButton(
              onPressed: () => windowManager.destroy(),
              style: ButtonStyle(
                backgroundColor: ButtonState.resolveWith(
                  (states) {
                    if (states.isNone) {
                      return Colors.red.normal;
                    }
                    if (states.isPressing) {
                      return Colors.red.lighter;
                    }
                    if (states.isHovering) {
                      return Colors.red.light;
                    }
                    return null;
                  },
                ),
              ),
              child: const Text('关闭'),
            ),
          ],
        );
      },
    );
  }

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
