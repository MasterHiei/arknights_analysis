import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/ak_login/ak_login_provider.dart';
import '../../application/ak_login/states/ak_login_state.dart';
import '../../application/webview/webview_provider.dart';
import '../../core/constants/constants.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/common/widgets/app_flush_bar.dart';

class AkLoginPage extends ConsumerStatefulWidget {
  const AkLoginPage({super.key});

  @override
  ConsumerState<AkLoginPage> createState() => _AkLoginPageState();
}

class _AkLoginPageState extends ConsumerState<AkLoginPage> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
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
    final controller = ref.watch(webviewProvider(akLoginPage)).controller;
    final isInitialized = controller.value.isInitialized;
    if (isInitialized) {
      _listenState(context, ref);
    }
    return material.Scaffold(
      body: Stack(
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
        (_, next) => next.maybeWhen<void>(
          failed: (failure) => AppFlushBar.show(
            context,
            message: failure.localizedMessage,
          ),
          loggedIn: () => ref.read(akLoginProvider.notifier).go(context),
          orElse: () {},
        ),
      );
}
