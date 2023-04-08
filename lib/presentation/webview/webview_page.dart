import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../application/webview/webview_provider.dart';
import '../core/routing/router.dart';

class WebviewPage extends ConsumerWidget {
  const WebviewPage(
    this.initialUrl, {
    super.key,
    this.useNavigationBar = true,
  });

  final String initialUrl;
  final bool useNavigationBar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(webviewProvider(initialUrl)).controller;
    final isInitialized = controller.value.isInitialized;
    final hasNavigationBar = isInitialized && useNavigationBar;
    return NavigationView(
      content: Stack(
        children: [
          if (isInitialized) Positioned.fill(child: Webview(controller)),
          if (hasNavigationBar)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: _NavigationBar(controller),
              ),
            ),
          if (!isInitialized)
            const Positioned(left: 0, top: 0, right: 0, child: ProgressBar()),
        ],
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar(this.controller);

  final WebviewController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(20),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _NavigationBarItem(
              tooltip: '返回',
              icon: FluentIcons.chrome_back,
              onPressed: controller.goBack,
            ),
            _NavigationBarItem(
              tooltip: '继续',
              icon: FluentIcons.chrome_back_mirrored,
              onPressed: controller.goForward,
            ),
            StreamBuilder<String>(
              stream: controller.url,
              builder: (_, snapshot) {
                return _NavigationBarItem(
                  tooltip: '在浏览器打开',
                  icon: FluentIcons.chrome_restore,
                  onPressed: () async {
                    final urlString = snapshot.data;
                    if (urlString != null) {
                      launchUrlString(urlString);
                    }
                  },
                );
              },
            ),
            _NavigationBarItem(
              tooltip: '关闭页面',
              icon: FluentIcons.chrome_close,
              onPressed: router.pop,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    required this.tooltip,
    required this.icon,
    required this.onPressed,
  });

  final String tooltip;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.w,
      height: 48.h,
      child: Tooltip(
        message: tooltip,
        useMousePosition: false,
        child: IconButton(
          icon: Icon(icon, size: 18.sp),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
