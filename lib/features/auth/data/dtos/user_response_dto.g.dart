// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseDtoImpl _$$UserResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserResponseDtoImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String? ?? '',
      data: json['data'] == null
          ? null
          : UserDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserResponseDtoImplToJson(
        _$UserResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
