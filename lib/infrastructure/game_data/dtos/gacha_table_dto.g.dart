// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_table_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GachaTableDto _$$_GachaTableDtoFromJson(Map<String, dynamic> json) =>
    _$_GachaTableDto(
      gachaPoolClient: (json['gachaPoolClient'] as List<dynamic>)
          .map((e) => GachaPoolDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GachaTableDtoToJson(_$_GachaTableDto instance) =>
    <String, dynamic>{
      'gachaPoolClient': instance.gachaPoolClient,
    };
