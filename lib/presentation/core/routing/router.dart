import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ak_login/ak_login_page.dart';
import '../../portal/portal_page.dart';
import '../../splash/splash_page.dart';
import 'route_params.dart';

enum Routes {
  splash(name: 'splash', path: '/'),
  akLogin(name: 'akLogin', path: '/akLogin'),
  portal(name: 'portal', path: '/portal');

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
          pageBuilder: (_, state) => PortalPage(state.extra as PortalParams),
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
}

final router = GoRouter(
  routes: Routes.values.map((route) => route.route).toList(),
  debugLogDiagnostics: kDebugMode,
);

typedef _PageBuilder = Widget Function(
  BuildContext context,
  GoRouterState state,
);

GoRoute _buildFadeTransitionPage(
  Routes route, {
  required _PageBuilder pageBuilder,
}) =>
    GoRoute(
      name: route.name,
      path: route.path,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: pageBuilder(context, state),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    );
