import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../core/routing/router.dart';

class WebviewNavBar extends StatelessWidget {
  const WebviewNavBar(this.controller, {super.key});

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
            _buildNavBarItem(
              tooltip: '返回',
              icon: FluentIcons.chrome_back,
              onPressed: controller.goBack,
            ),
            _buildNavBarItem(
              tooltip: '继续',
              icon: FluentIcons.chrome_back_mirrored,
              onPressed: controller.goForward,
            ),
            StreamBuilder<String>(
              stream: controller.url,
              builder: (_, snapshot) {
                return _buildNavBarItem(
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
            _buildNavBarItem(
              tooltip: '关闭页面',
              icon: FluentIcons.chrome_close,
              onPressed: router.pop,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBarItem({
    required String tooltip,
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      SizedBox(
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
