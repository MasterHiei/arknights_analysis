// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_body_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenBodyDto _$$_TokenBodyDtoFromJson(Map<String, dynamic> json) =>
    _$_TokenBodyDto(
      appId: json['appId'] as int? ?? 1,
      channelMasterId: json['channelMasterId'] as int? ?? 1,
      token: _tokenFromJson(json['channelToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenBodyDtoToJson(_$_TokenBodyDto instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'channelMasterId': instance.channelMasterId,
      'channelToken': _tokenToJson(instance.token),
    };
