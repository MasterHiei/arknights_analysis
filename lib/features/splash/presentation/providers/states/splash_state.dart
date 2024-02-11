import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/app_failure.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(false) bool startAnimation,
    @Default(false) bool isFetching,
    @Default(false) bool shouldTransition,
    @Default(None()) Option<AppFailure> failureOption,
  }) = _SplashState;

  const SplashState._();

  double get opacity => switch (startAnimation) {
        true => 1,
        false => 0,
      };
}
