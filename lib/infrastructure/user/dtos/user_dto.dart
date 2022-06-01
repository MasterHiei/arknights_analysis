import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../schemas/t_user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String uid,
    required String nickName,
    @JsonKey(ignore: true) @Default('') String token,
  }) = _UserDto;

  factory UserDto.fromJson(Json json) => _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User user) => UserDto(
        uid: user.uid.getOrCrash(),
        nickName: user.nickName,
        token: user.token.getOrCrash(),
      );

  factory UserDto.fromSchema(TUser user) => UserDto(
        uid: user.uid,
        nickName: user.nickName,
        token: user.token,
      );

  User toDomain() => User(
        uid: Uid(uid),
        nickName: nickName,
        token: Token(token),
      );

  TUser toSchema() => TUser()
    ..uid = uid
    ..nickName = nickName
    ..token = token;
}
