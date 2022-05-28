import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user/value_objects/token.dart';
import '../schemas/t_user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  factory UserDto({
    @JsonKey(defaultValue: '') required String uid,
    @JsonKey(defaultValue: '') required String nickName,
    @JsonKey(defaultValue: '') required String token,
  }) = _UserDto;

  factory UserDto.fromJson(Json json) => _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User user) => UserDto(
        uid: user.uid,
        nickName: user.nickName,
        token: user.token.getOrCrash(),
      );

  factory UserDto.fromSchema(TUser user) => UserDto(
        uid: user.uid,
        nickName: user.nickName,
        token: user.token,
      );

  User toDomain() => User(
        uid: uid,
        nickName: nickName,
        token: Token(token),
      );

  TUser toSchema() => TUser()
    ..uid = uid
    ..nickName = nickName
    ..token = token;
}
