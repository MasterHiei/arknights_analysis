import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/app_failure.dart';

part 'refresh_diamond_history_state.freezed.dart';

@freezed
class RefreshDiamondHistoryState with _$RefreshDiamondHistoryState {
  const factory RefreshDiamondHistoryState.init() = _Init;

  const factory RefreshDiamondHistoryState.fetching({
    required int current,
    required int total,
  }) = _Fetching;

  const factory RefreshDiamondHistoryState.success() = _Success;

  const factory RefreshDiamondHistoryState.failure(
    AppFailure failure,
  ) = _Failure;
}
