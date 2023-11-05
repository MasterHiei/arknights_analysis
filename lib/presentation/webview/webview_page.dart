import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../application/webview/webview_provider.dart' hide Webview;
import '../core/common/widgets/app_error_view.dart';
import '../core/routing/params/route_params.dart';
import 'widgets/index.dart';

class WebviewPage extends ConsumerWidget {
  const WebviewPage(this.params, {super.key});

  final WebviewParams params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(webviewProvider(initialUrl: params.initialUrl)).when(
          data: (controller) => NavigationView(
            content: Stack(
              children: [
                Positioned.fill(child: Webview(controller)),
                if (params.useNavigationBar)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: WebviewNavBar(controller),
                    ),
                  ),
              ],
            ),
          ),
          error: (_, __) => const AppErrorView(),
          loading: () => const NavigationView(
            content: Stack(
              children: [
                Positioned(left: 0, top: 0, right: 0, child: ProgressBar()),
              ],
            ),
          ),
        );
  }
}
