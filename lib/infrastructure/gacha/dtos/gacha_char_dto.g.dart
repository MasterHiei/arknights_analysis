// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_char_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GachaCharDto _$$_GachaCharDtoFromJson(Map<String, dynamic> json) =>
    _$_GachaCharDto(
      name: json['name'] as String,
      rarity: $enumDecode(_$RarityEnumMap, json['rarity']),
      isNew: json['isNew'] as bool,
    );

Map<String, dynamic> _$$_GachaCharDtoToJson(_$_GachaCharDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rarity': _$RarityEnumMap[instance.rarity]!,
      'isNew': instance.isNew,
    };

const _$RarityEnumMap = {
  Rarity.one: 0,
  Rarity.two: 1,
  Rarity.three: 2,
  Rarity.four: 3,
  Rarity.five: 4,
  Rarity.six: 5,
};
