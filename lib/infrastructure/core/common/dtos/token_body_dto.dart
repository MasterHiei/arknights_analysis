import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/types.dart';

part 'token_body_dto.freezed.dart';
part 'token_body_dto.g.dart';

@freezed
class TokenBodyDto with _$TokenBodyDto {
  const factory TokenBodyDto({
    @Default(1)
        int appId,
    @Default(1)
        int channelMasterId,
    @JsonKey(
      name: 'channelToken',
      fromJson: _tokenFromJson,
      toJson: _tokenToJson,
    )
        required String token,
  }) = _TokenBodyDto;

  factory TokenBodyDto.fromJson(Json json) => _$TokenBodyDtoFromJson(json);
}

String _tokenFromJson(Json json) => json['token'] as String;

Json _tokenToJson(String token) => <String, dynamic>{'token': token};
