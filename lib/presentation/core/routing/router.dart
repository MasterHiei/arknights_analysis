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
  user(name: 'user', path: '/user');

  const Routes({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

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
  routes: [
    GoRoute(
      name: Routes.splash.name,
      path: Routes.splash.path,
      pageBuilder: (_, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SplashPage(),
      ),
    ),
    GoRoute(
      name: Routes.akLogin.name,
      path: Routes.akLogin.path,
      pageBuilder: (_, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const AkLoginPage(),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      name: Routes.user.name,
      path: Routes.user.path,
      pageBuilder: (_, state) => CustomTransitionPage(
        key: state.pageKey,
        child: PortalPage(state.extra as PortalParams),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
  ],
  debugLogDiagnostics: kDebugMode,
);
