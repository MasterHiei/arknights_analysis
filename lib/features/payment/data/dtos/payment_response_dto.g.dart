// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseDtoImpl _$$PaymentResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseDtoImpl(
      code: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PaymentRecordDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$PaymentResponseDtoImplToJson(
        _$PaymentResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };
