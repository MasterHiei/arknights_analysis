import 'dart:async';

import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_windows/webview_windows.dart';
import 'package:window_manager/window_manager.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/app_loading_indicator.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../presentation/core/common/widgets/app_alert.dart';
import '../../../../presentation/core/common/widgets/app_dialog.dart';
import '../providers/ak_login_provider.dart';
import '../providers/refresh_user_provider.dart';

class AkLoginPage extends ConsumerStatefulWidget {
  const AkLoginPage({super.key});

  @override
  ConsumerState<AkLoginPage> createState() => _AkLoginPageState();
}

class _AkLoginPageState extends ConsumerState<AkLoginPage> with WindowListener {
  final _controller = WebviewController();
  final List<StreamSubscription<dynamic>> _subscriptions = [];

  @override
  void initState() {
    super.initState();

    windowManager.addListener(this);
  }

  @override
  void dispose() {
    _subscriptions.forEachIndexed((_, s) => s.cancel());
    _controller.dispose();
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
    _listenState();
    _listenRefreshUserState();

    return FutureBuilder(
      future: _initWebview(),
      builder: (_, snapshot) => material.Scaffold(
        body: Stack(
          children: [
            if (snapshot.hasData)
              Positioned.fill(child: Webview(_controller))
            else if (snapshot.hasError)
              Positioned.fill(
                child: AppErrorView(message: snapshot.error?.toString()),
              )
            else
              const Positioned(left: 0, top: 0, right: 0, child: ProgressBar()),
          ],
        ),
      ),
    );
  }

  Future<void> _initWebview() async {
    await _controller.initialize();
    await Future.wait([
      _controller.setBackgroundColor(Colors.transparent),
      _controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny),
    ]);

    // Subscribe to events
    void subscribeUrl(String url) =>
        ref.read(akLoginProvider.notifier).subscribeUrl(_controller, url);
    void subscribeWebMessage(dynamic data) =>
        ref.read(akLoginProvider.notifier).subscribeWebMessage(data);
    _subscriptions.addAll([
      _controller.url.listen(subscribeUrl),
      _controller.webMessage.listen(subscribeWebMessage),
    ]);

    // Load URL
    _controller.loadUrl(Constants.akLoginPage);
  }

  void _listenState() => ref.listen(
        akLoginProvider,
        (_, next) => next.maybeWhen<void>(
          loggingIn: AppLoadingIndicator.show,
          loggedIn: ref.read(refreshUserProvider.notifier).call,
          failed: (failure) async {
            AppLoadingIndicator.dismiss();

            await AppAlert.show(
              context,
              content: Text(failure.localizedMessage),
            );
            await Future.wait([
              _controller.clearCache(),
              _controller.clearCookies(),
            ]);
            await _controller.loadUrl(Constants.akLoginPage);
          },
          orElse: () {},
        ),
      );

  void _listenRefreshUserState() => ref.listen(
        refreshUserProvider,
        (_, next) => next.when(
          data: (_) {
            AppLoadingIndicator.dismiss();
            const DashboardRoute().go(context);
          },
          error: (e, _) async {
            AppLoadingIndicator.dismiss();

            final failure = switch (e) {
              final AppFailure f => f,
              _ => AppFailure.unexpectedError(e),
            };
            await AppDialog.retry(
              context,
              title: const Text(
                LocaleKeys.features_user_retryAlert_title,
              ).tr(),
              content: Text(failure.localizedMessage),
              onRetry: ref.read(refreshUserProvider.notifier).call,
              onCancel: windowManager.destroy,
            );
          },
          loading: AppLoadingIndicator.show,
        ),
      );
}
