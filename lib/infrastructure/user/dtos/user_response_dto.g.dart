// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponseDto _$$_UserResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_UserResponseDto(
      status: json['status'] as int?,
      msg: json['msg'] as String? ?? '',
      data: json['data'] == null
          ? null
          : UserDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserResponseDtoToJson(_$_UserResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
