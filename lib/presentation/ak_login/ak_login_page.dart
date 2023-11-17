import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/ak_login/ak_login_provider.dart';
import '../../application/webview/webview_provider.dart' hide Webview;
import '../../core/constants/constants.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/common/widgets/app_error_view.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../core/routing/routes.dart';

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
    return ref.watch(webviewProvider(initialUrl: Constants.akLoginPage)).when(
          data: (controller) {
            _listenState(context, ref);
            return material.Scaffold(body: Webview(controller));
          },
          error: (_, __) => const AppErrorView(),
          loading: () => const material.Scaffold(
            body: Stack(
              children: [
                Positioned(left: 0, top: 0, right: 0, child: ProgressBar()),
              ],
            ),
          ),
        );
  }

  void _listenState(BuildContext context, WidgetRef ref) => ref.listen(
        akLoginProvider,
        (_, next) => next.maybeWhen<void>(
          failed: (failure) => AppFlushBar.show(
            context,
            message: failure.localizedMessage,
          ),
          loggedIn: () => const PortalRoute().go(context),
          orElse: () {},
        ),
      );
}
