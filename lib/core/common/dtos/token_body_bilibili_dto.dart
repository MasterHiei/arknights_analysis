import 'package:freezed_annotation/freezed_annotation.dart';

import '../../types/types.dart';

part 'token_body_bilibili_dto.freezed.dart';
part 'token_body_bilibili_dto.g.dart';

@freezed
class TokenBodyBilibiliDto with _$TokenBodyBilibiliDto {
  const factory TokenBodyBilibiliDto({
    required String token,
  }) = _TokenBodyBilibiliDto;

  factory TokenBodyBilibiliDto.fromJson(Json json) =>
      _$TokenBodyBilibiliDtoFromJson(json);
}
