import 'package:freezed_annotation/freezed_annotation.dart';

import '../../types/types.dart';

part 'token_body_dto.freezed.dart';
part 'token_body_dto.g.dart';

@freezed
class TokenBodyDto with _$TokenBodyDto {
  const factory TokenBodyDto({
    @JsonKey(includeIfNull: false) int? appId,
    @JsonKey(includeIfNull: false) int? channelMasterId,
    @JsonKey(
      name: 'channelToken',
      fromJson: _tokenFromJson,
      toJson: _tokenToJson,
    )
    required String token,
  }) = _TokenBodyDto;

  factory TokenBodyDto.official(String token) => TokenBodyDto(
        appId: 1,
        channelMasterId: 1,
        token: token,
      );

  factory TokenBodyDto.bilibili(String token) => TokenBodyDto(token: token);

  factory TokenBodyDto.fromJson(Json json) => _$TokenBodyDtoFromJson(json);
}

String _tokenFromJson(Json json) => json['token'] as String;

Json _tokenToJson(String token) => <String, dynamic>{'token': token};
