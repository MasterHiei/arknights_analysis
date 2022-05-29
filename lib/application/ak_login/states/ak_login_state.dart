import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/value_objects/token.dart';

part 'ak_login_state.freezed.dart';

@freezed
class AkLoginState with _$AkLoginState {
  const factory AkLoginState.init() = _Init;

  const factory AkLoginState.shouldGo(Token token) = _ShouldGo;
}
