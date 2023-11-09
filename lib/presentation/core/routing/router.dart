import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ak_login/ak_login_page.dart';
import '../../portal/portal_page.dart';
import '../../splash/splash_page.dart';
import '../../webview/webview_page.dart';
import 'params/route_extra_codec.dart';
import 'params/route_params.dart';

part 'router.g.dart';

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

@TypedGoRoute<PortalRoute>(path: '/portal')
@immutable
class PortalRoute extends GoRouteData {
  const PortalRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      _buildFadeTransitionPage(
        context,
        state,
        child: const PortalPage(),
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

final router = GoRouter(
  routes: $appRoutes,
  debugLogDiagnostics: kDebugMode,
  observers: [BotToastNavigatorObserver()],
  extraCodec: const RouteExtraCodec(),
);

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
