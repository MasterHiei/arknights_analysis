import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/value_objects/token.dart';

part 'route_params.freezed.dart';

@Freezed(
  copyWith: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
class RouteParams with _$RouteParams {
  const factory RouteParams.portal({required Token token}) = PortalParams;

  const factory RouteParams.webview({
    required String initialUrl,
    @Default(false) bool enableNavigationBar,
  }) = WebviewParams;
}
