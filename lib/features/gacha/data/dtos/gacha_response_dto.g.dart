// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GachaResponseDtoImpl _$$GachaResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GachaResponseDtoImpl(
      code: (json['code'] as num?)?.toInt(),
      msg: json['msg'] as String? ?? '',
      data: _dataFromJson(json['data'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$GachaResponseDtoImplToJson(
        _$GachaResponseDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
