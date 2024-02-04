import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/ak_login_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import '../../features/webview/presentation/pages/webview_page.dart';
import 'params/route_params.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(path: '/')
@immutable
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildFadeTransitionPage(
        context,
        state,
        child: const SplashPage(),
      );
}

@TypedGoRoute<AkLoginRoute>(path: '/akLogin')
@immutable
class AkLoginRoute extends GoRouteData {
  const AkLoginRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildFadeTransitionPage(
        context,
        state,
        child: const AkLoginPage(),
      );
}

@TypedGoRoute<DashboardRoute>(path: '/dashboard')
@immutable
class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildFadeTransitionPage(
        context,
        state,
        child: const DashboardPage(),
      );
}

@TypedGoRoute<WebviewRoute>(path: '/webview')
@immutable
class WebviewRoute extends GoRouteData {
  const WebviewRoute(this.$extra);

  final WebviewParams $extra;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildFadeTransitionPage(
        context,
        state,
        fullscreenDialog: true,
        child: WebviewPage($extra),
      );
}

@TypedGoRoute<LicenseRoute>(path: '/license')
@immutable
class LicenseRoute extends GoRouteData {
  const LicenseRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildFadeTransitionPage(
        context,
        state,
        fullscreenDialog: true,
        child: const LicensePage(),
      );
}

Page<void> _buildFadeTransitionPage(
  BuildContext context,
  GoRouterState state, {
  bool fullscreenDialog = false,
  required Widget child,
}) =>
    CustomTransitionPage<void>(
      key: state.pageKey,
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      fullscreenDialog: fullscreenDialog,
      child: child,
    );
