import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../../../core/routing/params/route_params.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../widgets/index.dart';

class WebviewPage extends ConsumerStatefulWidget {
  const WebviewPage(this.params, {super.key});

  final WebviewParams params;

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends ConsumerState<WebviewPage> {
  final _controller = WebviewController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initWebview(),
      builder: (_, snapshot) {
        if (snapshot.hasError) {
          return const AppErrorView();
        }

        final children = switch (snapshot.hasData) {
          true => [
              Positioned.fill(child: Webview(_controller)),
            ],
          false => const [
              Positioned(left: 0, top: 0, right: 0, child: ProgressBar()),
            ],
        };
        return NavigationView(
          content: Stack(
            children: [
              ...children,
              if (widget.params.useNavigationBar)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: WebviewNavBar(controller: _controller),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Future<Unit> _initWebview() async {
    await _controller.initialize();
    await Future.wait([
      _controller.setBackgroundColor(Colors.transparent),
      _controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny),
    ]);
    await _controller.loadUrl(widget.params.initialUrl);
    return unit;
  }
}
