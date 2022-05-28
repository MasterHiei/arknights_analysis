import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects/token.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String uid,
    required String nickName,
    required Token token,
  }) = _User;
}
