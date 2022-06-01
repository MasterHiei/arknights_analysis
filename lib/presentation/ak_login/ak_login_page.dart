import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../application/ak_login/ak_login_provider.dart';
import '../../application/ak_login/states/ak_login_state.dart';
import '../../core/constants/constants.dart';
import '../../core/utils/logger.dart';

class AkLoginPage extends ConsumerStatefulWidget {
  const AkLoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AkLoginPage> createState() => _AkLoginPageState();
}

class _AkLoginPageState extends ConsumerState<AkLoginPage> {
  final _controller = WebviewController();

  bool get _isInitialized => _controller.value.isInitialized;

  @override
  void initState() {
    super.initState();
    try {
      _initWebView();
    } catch (e, stackTrace) {
      logger.e(e, e, stackTrace);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listenState();

    return ScaffoldPage(
      content: Stack(
        children: [
          if (_isInitialized) Positioned.fill(child: Webview(_controller)),
          if (!_isInitialized)
            const Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ProgressBar(),
            ),
        ],
      ),
    );
  }

  Future<void> _initWebView() async {
    await _controller.initialize();
    await Future.wait([
      _controller.setBackgroundColor(Colors.transparent),
      _controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny),
      _controller.loadUrl(akLoginPage),
    ]);

    ref.read(akLoginProvider.notifier).startListening(_controller);

    if (!mounted) return;
    setState(() {});
  }

  void _listenState() => ref.listen<AkLoginState>(
        akLoginProvider,
        (_, next) => next.maybeWhen(
          shouldGo: () => ref.read(akLoginProvider.notifier).go(context),
          orElse: () => null,
        ),
      );
}
