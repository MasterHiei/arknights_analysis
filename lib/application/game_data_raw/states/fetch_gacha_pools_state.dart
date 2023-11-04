import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'fetch_gacha_pools_state.freezed.dart';

@freezed
class FetchGachaPoolsState with _$FetchGachaPoolsState {
  const factory FetchGachaPoolsState.init() = _Init;

  const factory FetchGachaPoolsState.fetching() = _Fetching;

  const factory FetchGachaPoolsState.success() = _Success;

  const factory FetchGachaPoolsState.failure(AppFailure failure) = _Failure;
}
