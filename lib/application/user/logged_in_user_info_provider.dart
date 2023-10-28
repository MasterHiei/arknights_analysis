import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/enums/ak_login_type.dart';
import '../../domain/user/user.dart';
import '../../domain/user/value_objects/token.dart';
import 'states/logged_in_user_info_state.dart';

part 'logged_in_user_info_provider.g.dart';

@riverpod
AkLoginType loginType(LoginTypeRef ref) =>
    ref.watch(loggedInUserInfoProvider).loginType;

@riverpod
Option<Token> token(TokenRef ref) =>
    ref.watch(loggedInUserInfoProvider).tokenOption;

@riverpod
Option<User> user(UserRef ref) =>
    ref.watch(loggedInUserInfoProvider).userOption;

@Riverpod(keepAlive: true)
class LoggedInUserInfo extends _$LoggedInUserInfo {
  @override
  LoggedInUserInfoState build() => LoggedInUserInfoState.init();

  void updateLoginType(AkLoginType loginType) => state = state.copyWith(
        loginType: loginType,
      );

  void updateToken(Token token) => state = state.copyWith(
        tokenOption: some(token),
      );

  void updateUser(User user) => state = state.copyWith(
        userOption: some(user),
      );
}
