import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'ak_login_state.freezed.dart';

@Freezed(map: FreezedMapOptions.none)
class AkLoginState with _$AkLoginState {
  const factory AkLoginState.init() = _Init;

  const factory AkLoginState.failed(AppFailure failure) = _Failed;

  const factory AkLoginState.shouldGo() = _ShouldGo;
}
