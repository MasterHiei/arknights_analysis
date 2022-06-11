import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../domain/user/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.init() = _Init;

  const factory UserState.fetching() = _Fetching;

  const factory UserState.success(User user) = _Success;

  const factory UserState.failure(AppFailure failure) = _Failure;
}
