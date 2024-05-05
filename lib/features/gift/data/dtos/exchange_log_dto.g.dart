// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_log_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeLogDtoImpl _$$ExchangeLogDtoImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeLogDtoImpl(
      giftName: json['giftName'] as String,
      code: json['code'] as String,
      ts: (json['ts'] as num).toInt(),
      uid: json['uid'] as String? ?? '',
    );

Map<String, dynamic> _$$ExchangeLogDtoImplToJson(
        _$ExchangeLogDtoImpl instance) =>
    <String, dynamic>{
      'giftName': instance.giftName,
      'code': instance.code,
      'ts': instance.ts,
      'uid': instance.uid,
    };
