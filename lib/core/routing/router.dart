import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

import 'params/route_params_codec.dart';
import 'routes.dart';

final router = GoRouter(
  routes: $appRoutes,
  debugLogDiagnostics: kDebugMode,
  observers: [BotToastNavigatorObserver()],
  extraCodec: const RouteParamsCodec(),
);
