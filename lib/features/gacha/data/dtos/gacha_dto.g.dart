// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GachaDtoImpl _$$GachaDtoImplFromJson(Map<String, dynamic> json) =>
    _$GachaDtoImpl(
      records: (json['list'] as List<dynamic>)
          .map((e) => GachaRecordDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationDto.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GachaDtoImplToJson(_$GachaDtoImpl instance) =>
    <String, dynamic>{
      'list': instance.records,
      'pagination': instance.pagination,
    };
