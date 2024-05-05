// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistence_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersistenceDtoImpl _$$PersistenceDtoImplFromJson(Map<String, dynamic> json) =>
    _$PersistenceDtoImpl(
      gacha: GachaDto.fromJson(json['gacha'] as Map<String, dynamic>),
      diamond: DiamondDto.fromJson(json['diamond'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PersistenceDtoImplToJson(
        _$PersistenceDtoImpl instance) =>
    <String, dynamic>{
      'gacha': instance.gacha,
      'diamond': instance.diamond,
    };
