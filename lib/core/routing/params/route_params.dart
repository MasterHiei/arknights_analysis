import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_params.freezed.dart';

@freezed
class RouteParams with _$RouteParams {
  const factory RouteParams.webview({
    required String initialUrl,
    @Default(true) bool useNavigationBar,
  }) = WebviewParams;
}
