import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/ak_login_type.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user/value_objects/token.dart';

part 'logged_in_user_info_state.freezed.dart';

@freezed
class LoggedInUserInfoState with _$LoggedInUserInfoState {
  const factory LoggedInUserInfoState({
    required AkLoginType loginType,
    required Option<Token> tokenOption,
    required Option<User> userOption,
  }) = _LoggedInUserInfoState;

  const LoggedInUserInfoState._();

  factory LoggedInUserInfoState.init() => LoggedInUserInfoState(
        loginType: AkLoginType.official,
        tokenOption: none(),
        userOption: none(),
      );
}
