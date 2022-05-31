// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GachaResponseDto _$$_GachaResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_GachaResponseDto(
      code: json['code'] as int?,
      msg: json['msg'] as String? ?? '',
      data: json['data'] == null
          ? null
          : GachaDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GachaResponseDtoToJson(_$_GachaResponseDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
