// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_char_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GachaCharDtoImpl _$$GachaCharDtoImplFromJson(Map<String, dynamic> json) =>
    _$GachaCharDtoImpl(
      name: json['name'] as String,
      rarity: $enumDecode(_$RarityEnumMap, json['rarity']),
      isNew: json['isNew'] as bool,
    );

Map<String, dynamic> _$$GachaCharDtoImplToJson(_$GachaCharDtoImpl instance) =>
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
