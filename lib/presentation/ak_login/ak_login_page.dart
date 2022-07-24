import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../application/ak_login/ak_login_provider.dart';
import '../../application/ak_login/states/ak_login_state.dart';
import '../../application/webview/webview_provider.dart';
import '../../core/constants/constants.dart';
import '../core/common/widgets/app_flush_bar.dart';

class AkLoginPage extends ConsumerStatefulWidget {
  const AkLoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<AkLoginPage> createState() => _AkLoginPageState();
}

class _AkLoginPageState extends ConsumerState<AkLoginPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(webviewProvider.notifier)
        .initialize(context, initialUrl: akLoginPage);
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(webviewProvider).controller;
    final isInitialized = controller.value.isInitialized;
    if (isInitialized) {
      _listenLoginState();
    }
    return ScaffoldPage(
      content: Stack(
        children: [
          if (isInitialized) Positioned.fill(child: Webview(controller)),
          if (!isInitialized)
            const Positioned(left: 0, top: 0, right: 0, child: ProgressBar()),
        ],
      ),
    );
  }

  void _listenLoginState() => ref.listen<AkLoginState>(
        akLoginProvider,
        (_, next) => next.maybeWhen(
          failed: (failure) => AppFlushBar.show(
            context,
            message: failure.localizedMessage,
          ),
          loggedIn: () => ref.read(akLoginProvider.notifier).go(context),
          orElse: () => null,
        ),
      );
}
