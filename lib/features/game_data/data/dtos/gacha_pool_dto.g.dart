// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_pool_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GachaPoolDtoImpl _$$GachaPoolDtoImplFromJson(Map<String, dynamic> json) =>
    _$GachaPoolDtoImpl(
      gachaPoolId: json['gachaPoolId'] as String,
      gachaIndex: (json['gachaIndex'] as num).toInt(),
      openTime: (json['openTime'] as num).toInt(),
      endTime: (json['endTime'] as num).toInt(),
      gachaPoolName: json['gachaPoolName'] as String,
      gachaRuleType: $enumDecode(_$GachaRuleTypeEnumMap, json['gachaRuleType']),
    );

Map<String, dynamic> _$$GachaPoolDtoImplToJson(_$GachaPoolDtoImpl instance) =>
    <String, dynamic>{
      'gachaPoolId': instance.gachaPoolId,
      'gachaIndex': instance.gachaIndex,
      'openTime': instance.openTime,
      'endTime': instance.endTime,
      'gachaPoolName': instance.gachaPoolName,
      'gachaRuleType': _$GachaRuleTypeEnumMap[instance.gachaRuleType]!,
    };

const _$GachaRuleTypeEnumMap = {
  GachaRuleType.normal: 'NORMAL',
  GachaRuleType.limited: 'LIMITED',
  GachaRuleType.linkage: 'LINKAGE',
  GachaRuleType.attain: 'ATTAIN',
  GachaRuleType.single: 'SINGLE',
  GachaRuleType.classic: 'CLASSIC',
  GachaRuleType.fesClassic: 'FESCLASSIC',
  GachaRuleType.classicAttain: 'CLASSIC_ATTAIN',
};
