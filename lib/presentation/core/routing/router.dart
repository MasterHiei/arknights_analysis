import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../arknights_analysis.dart';
import '../../splash/splash_page.dart';

enum Routes {
  splash(name: 'splash', path: '/'),
  login(name: 'login', path: '/login');

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
  }) {
    context.goNamed(
      name,
      params: params,
      queryParams: queryParams,
      extra: extra,
    );
  }
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
      name: Routes.login.name,
      path: Routes.login.path,
      pageBuilder: (_, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
  ],
  debugLogDiagnostics: kDebugMode,
);
