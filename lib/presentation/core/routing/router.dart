import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ak_login/ak_login_page.dart';
import '../../portal/portal_page.dart';
import '../../splash/splash_page.dart';
import '../../webview/webview_page.dart';
import 'route_params.dart';

enum Routes {
  splash(name: 'splash', path: '/'),
  akLogin(name: 'akLogin', path: '/akLogin'),
  portal(name: 'portal', path: '/portal'),
  webview(name: 'webview', path: '/webview');

  const Routes({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  GoRoute get route {
    switch (this) {
      case Routes.splash:
        return _buildFadeTransitionPage(
          this,
          pageBuilder: (_, __) => const SplashPage(),
        );

      case Routes.akLogin:
        return _buildFadeTransitionPage(
          this,
          pageBuilder: (_, __) => const AkLoginPage(),
        );

      case Routes.portal:
        return _buildFadeTransitionPage(
          this,
          pageBuilder: (_, state) => PortalPage(state.extra! as PortalParams),
        );

      case Routes.webview:
        return _buildFadeTransitionPage(
          this,
          pageBuilder: (_, state) => WebviewPage(state.extra! as WebviewParams),
          fullscreenDialog: true,
        );
    }
  }

  void go(
    BuildContext context, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
  }) =>
      context.goNamed(
        name,
        params: params,
        queryParams: queryParams,
        extra: extra,
      );

  void push(
    BuildContext context, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
  }) =>
      context.pushNamed(
        name,
        params: params,
        queryParams: queryParams,
        extra: extra,
      );
}

final router = GoRouter(
  routes: Routes.values.map((route) => route.route).toList(),
  debugLogDiagnostics: kDebugMode,
);

GoRoute _buildFadeTransitionPage(
  Routes route, {
  bool fullscreenDialog = false,
  required Widget Function(BuildContext, GoRouterState) pageBuilder,
}) =>
    GoRoute(
      name: route.name,
      path: route.path,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        fullscreenDialog: fullscreenDialog,
        child: pageBuilder(context, state),
      ),
    );
