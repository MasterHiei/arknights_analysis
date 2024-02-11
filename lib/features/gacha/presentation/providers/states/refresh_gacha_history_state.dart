import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/app_failure.dart';

part 'refresh_gacha_history_state.freezed.dart';

@freezed
class RefreshGachaHistoryState with _$RefreshGachaHistoryState {
  const factory RefreshGachaHistoryState.fetching({
    required int current,
    required int total,
  }) = _Fetching;

  const factory RefreshGachaHistoryState.success() = _Success;

  const factory RefreshGachaHistoryState.failure(
    AppFailure failure,
  ) = _Failure;
}
