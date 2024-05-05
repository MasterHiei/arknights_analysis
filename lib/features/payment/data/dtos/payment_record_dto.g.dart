// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRecordDtoImpl _$$PaymentRecordDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentRecordDtoImpl(
      orderId: json['orderId'] as String,
      platform: $enumDecode(_$PlatformEnumMap, json['platform']),
      amount: (json['amount'] as num).toInt(),
      productName: json['productName'] as String,
      payTime: (json['payTime'] as num).toInt(),
      uid: json['uid'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentRecordDtoImplToJson(
        _$PaymentRecordDtoImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'platform': _$PlatformEnumMap[instance.platform]!,
      'amount': instance.amount,
      'productName': instance.productName,
      'payTime': instance.payTime,
      'uid': instance.uid,
    };

const _$PlatformEnumMap = {
  Platform.ios: 0,
  Platform.android: 1,
};
