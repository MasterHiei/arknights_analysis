import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'diamond_state.freezed.dart';

@freezed
class DiamondState with _$DiamondState {
  const factory DiamondState.init() = _Init;

  const factory DiamondState.fetching({
    required int current,
    int? total,
  }) = _Fetching;

  const factory DiamondState.success() = _Success;

  const factory DiamondState.failure(AppFailure failure) = _Failure;
}
