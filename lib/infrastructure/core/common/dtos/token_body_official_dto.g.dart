// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_body_official_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenBodyOfficialDto _$$_TokenBodyOfficialDtoFromJson(
        Map<String, dynamic> json) =>
    _$_TokenBodyOfficialDto(
      appId: json['appId'] as int? ?? 1,
      channelMasterId: json['channelMasterId'] as int? ?? 1,
      token: _tokenFromJson(json['channelToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenBodyOfficialDtoToJson(
        _$_TokenBodyOfficialDto instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'channelMasterId': instance.channelMasterId,
      'channelToken': _tokenToJson(instance.token),
    };
