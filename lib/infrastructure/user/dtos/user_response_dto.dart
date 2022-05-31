import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import 'user_dto.dart';

part 'user_response_dto.freezed.dart';
part 'user_response_dto.g.dart';

@freezed
class UserResponseDto with _$UserResponseDto {
  const factory UserResponseDto({
    int? status,
    @Default('') String msg,
    UserDto? data,
  }) = _UserResponseDto;

  factory UserResponseDto.fromJson(Json json) =>
      _$UserResponseDtoFromJson(json);
}
