import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_params.freezed.dart';

@Freezed(
  copyWith: false,
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
class RouteParams with _$RouteParams {
  const factory RouteParams.webview({
    required String initialUrl,
    @Default(true) bool enableNavigationBar,
  }) = WebviewParams;
}
