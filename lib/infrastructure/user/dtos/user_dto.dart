import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../../domain/user/value_objects/uid.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String uid,
    required String nickName,
    @JsonKey(defaultValue: '') required String token,
  }) = _UserDto;

  factory UserDto.fromJson(Json json) => _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User user) => UserDto(
        uid: user.uid.getOrCrash(),
        nickName: user.nickName,
        token: user.token.getOrCrash(),
      );

  User toDomain() => User(
        uid: Uid(uid),
        nickName: nickName,
        token: Token(token),
      );
}
