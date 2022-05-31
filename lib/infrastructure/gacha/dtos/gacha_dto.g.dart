// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GachaDto _$$_GachaDtoFromJson(Map<String, dynamic> json) => _$_GachaDto(
      list: (json['list'] as List<dynamic>)
          .map((e) => GachaRecordDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationDto.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GachaDtoToJson(_$_GachaDto instance) =>
    <String, dynamic>{
      'list': instance.list,
      'pagination': instance.pagination,
    };
