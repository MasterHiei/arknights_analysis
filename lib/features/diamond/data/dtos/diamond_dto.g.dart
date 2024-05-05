// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diamond_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiamondDtoImpl _$$DiamondDtoImplFromJson(Map<String, dynamic> json) =>
    _$DiamondDtoImpl(
      records: (json['list'] as List<dynamic>)
          .map((e) => DiamondRecordDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationDto.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiamondDtoImplToJson(_$DiamondDtoImpl instance) =>
    <String, dynamic>{
      'list': instance.records,
      'pagination': instance.pagination,
    };
