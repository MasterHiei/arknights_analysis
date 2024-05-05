// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_body_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenBodyDtoImpl _$$TokenBodyDtoImplFromJson(Map<String, dynamic> json) =>
    _$TokenBodyDtoImpl(
      appId: (json['appId'] as num?)?.toInt(),
      channelMasterId: (json['channelMasterId'] as num?)?.toInt(),
      token: _tokenFromJson(json['channelToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokenBodyDtoImplToJson(_$TokenBodyDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('appId', instance.appId);
  writeNotNull('channelMasterId', instance.channelMasterId);
  val['channelToken'] = _tokenToJson(instance.token);
  return val;
}
