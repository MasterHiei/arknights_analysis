// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_table_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GachaTableDtoImpl _$$GachaTableDtoImplFromJson(Map<String, dynamic> json) =>
    _$GachaTableDtoImpl(
      gachaPoolClient: (json['gachaPoolClient'] as List<dynamic>)
          .map((e) => GachaPoolDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GachaTableDtoImplToJson(_$GachaTableDtoImpl instance) =>
    <String, dynamic>{
      'gachaPoolClient': instance.gachaPoolClient,
    };
