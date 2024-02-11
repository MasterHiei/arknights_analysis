import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/app_failure.dart';

part 'ak_login_state.freezed.dart';

@Freezed(map: FreezedMapOptions.none)
class AkLoginState with _$AkLoginState {
  const factory AkLoginState.init() = _Init;

  const factory AkLoginState.loggingIn() = _LoggingIn;

  const factory AkLoginState.loggedIn() = _LoggedIn;

  const factory AkLoginState.failed(AppFailure failure) = _Failed;
}
