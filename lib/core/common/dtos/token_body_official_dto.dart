import 'package:freezed_annotation/freezed_annotation.dart';

import '../../types/types.dart';

part 'token_body_official_dto.freezed.dart';
part 'token_body_official_dto.g.dart';

@freezed
class TokenBodyOfficialDto with _$TokenBodyOfficialDto {
  const factory TokenBodyOfficialDto({
    @Default(1) int appId,
    @Default(1) int channelMasterId,
    @JsonKey(
      name: 'channelToken',
      fromJson: _tokenFromJson,
      toJson: _tokenToJson,
    )
    required String token,
  }) = _TokenBodyOfficialDto;

  factory TokenBodyOfficialDto.fromJson(Json json) =>
      _$TokenBodyOfficialDtoFromJson(json);
}

String _tokenFromJson(Json json) => json['token'] as String;

Json _tokenToJson(String token) => <String, dynamic>{'token': token};
