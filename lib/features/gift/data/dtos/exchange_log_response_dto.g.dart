// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_log_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeLogResponseDtoImpl _$$ExchangeLogResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ExchangeLogResponseDtoImpl(
      code: (json['code'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => ExchangeLogDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$ExchangeLogResponseDtoImplToJson(
        _$ExchangeLogResponseDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'msg': instance.msg,
    };
