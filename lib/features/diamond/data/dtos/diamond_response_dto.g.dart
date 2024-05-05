// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diamond_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiamondResponseDtoImpl _$$DiamondResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DiamondResponseDtoImpl(
      code: (json['code'] as num?)?.toInt(),
      msg: json['msg'] as String? ?? '',
      data: _dataFromJson(json['data'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$DiamondResponseDtoImplToJson(
        _$DiamondResponseDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
