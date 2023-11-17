import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required double opacity,
    required bool shouldGo,
  }) = _SplashState;

  factory SplashState.init() => const SplashState(
        opacity: 0,
        shouldGo: false,
      );
}
