import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'fetch_gacha_state.freezed.dart';

@freezed
class FetchGachaState with _$FetchGachaState {
  const factory FetchGachaState.init() = _Init;

  const factory FetchGachaState.fetching({
    required int current,
    int? total,
  }) = _Fetching;

  const factory FetchGachaState.success() = _Success;

  const factory FetchGachaState.failure(AppFailure failure) = _Failure;
}
