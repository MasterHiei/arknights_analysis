import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'gacha_state.freezed.dart';

@freezed
class GachaState with _$GachaState {
  const factory GachaState.fetching({
    required int current,
    int? total,
  }) = _Fetching;

  const factory GachaState.success() = _Success;

  const factory GachaState.failure(AppFailure failure) = _Failure;
}
