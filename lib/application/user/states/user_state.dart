import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../domain/user/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState({
    required bool isRefreshing,
    required Option<User> userOption,
    required Option<AppFailure> failureOption,
  }) = _UserState;

  factory UserState.init() => UserState(
        isRefreshing: false,
        userOption: none(),
        failureOption: none(),
      );

  bool get hasFailure => failureOption.isSome();
}
