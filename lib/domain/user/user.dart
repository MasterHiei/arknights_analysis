import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects/token.dart';
import 'value_objects/uid.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required Uid uid,
    required String nickName,
    required Token token,
  }) = _User;
}
