import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../application/ak_login/ak_login_provider.dart';
import '../../application/ak_login/states/ak_login_state.dart';
import '../../application/webview/webview_provider.dart';
import '../../core/constants/constants.dart';
import '../core/common/widgets/app_flush_bar.dart';

class AkLoginPage extends ConsumerWidget {
  const AkLoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialUrl = optionOf(akLoginPage);
    final controller = ref.watch(webviewProvider(initialUrl)).controller;
    final isInitialized = controller.value.isInitialized;
    if (isInitialized) {
      _listenState(context, ref);
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

  void _listenState(BuildContext context, WidgetRef ref) =>
      ref.listen<AkLoginState>(
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
