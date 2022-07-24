import 'package:freezed_annotation/freezed_annotation.dart';

part 'ak_logout_state.freezed.dart';

@Freezed(map: FreezedMapOptions.none)
class AkLogoutState with _$AkLogoutState {
  const factory AkLogoutState.init() = _Init;

  const factory AkLogoutState.loggedOut() = _LoggedOut;
}
