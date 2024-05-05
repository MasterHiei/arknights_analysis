// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_body_official_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenBodyOfficialDtoImpl _$$TokenBodyOfficialDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenBodyOfficialDtoImpl(
      appId: (json['appId'] as num?)?.toInt() ?? 1,
      channelMasterId: (json['channelMasterId'] as num?)?.toInt() ?? 1,
      token: _tokenFromJson(json['channelToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokenBodyOfficialDtoImplToJson(
        _$TokenBodyOfficialDtoImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'channelMasterId': instance.channelMasterId,
      'channelToken': _tokenToJson(instance.token),
    };
