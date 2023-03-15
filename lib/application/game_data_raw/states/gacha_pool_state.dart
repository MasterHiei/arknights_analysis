import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'gacha_pool_state.freezed.dart';

@freezed
class GachaPoolState with _$GachaPoolState {
  const factory GachaPoolState.fetching() = _Fetching;

  const factory GachaPoolState.success() = _Success;

  const factory GachaPoolState.failure(AppFailure failure) = _Failure;
}
