import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'fetch_diamonds_state.freezed.dart';

@freezed
class FetchDiamondsState with _$FetchDiamondsState {
  const factory FetchDiamondsState.init() = _Init;

  const factory FetchDiamondsState.fetching({
    required int current,
    int? total,
  }) = _Fetching;

  const factory FetchDiamondsState.success() = _Success;

  const factory FetchDiamondsState.failure(AppFailure failure) = _Failure;
}
