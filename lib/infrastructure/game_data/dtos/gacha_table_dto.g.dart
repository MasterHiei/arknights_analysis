// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_table_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GachaTableDto _$$_GachaTableDtoFromJson(Map<String, dynamic> json) =>
    _$_GachaTableDto(
      gachaPoolId: json['gachaPoolId'] as String,
      gachaIndex: json['gachaIndex'] as int,
      openTime: json['openTime'] as int,
      endTime: json['endTime'] as int,
      gachaPoolName: json['gachaPoolName'] as String,
      gachaRuleType: $enumDecode(_$GachaRuleTypeEnumMap, json['gachaRuleType']),
    );

Map<String, dynamic> _$$_GachaTableDtoToJson(_$_GachaTableDto instance) =>
    <String, dynamic>{
      'gachaPoolId': instance.gachaPoolId,
      'gachaIndex': instance.gachaIndex,
      'openTime': instance.openTime,
      'endTime': instance.endTime,
      'gachaPoolName': instance.gachaPoolName,
      'gachaRuleType': _$GachaRuleTypeEnumMap[instance.gachaRuleType],
    };

const _$GachaRuleTypeEnumMap = {
  GachaRuleType.normal: 'NORMAL',
  GachaRuleType.limited: 'LIMITED',
};
