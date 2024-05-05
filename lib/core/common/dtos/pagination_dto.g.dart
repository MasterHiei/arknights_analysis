// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDtoImpl _$$PaginationDtoImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDtoImpl(
      current: (json['current'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationDtoImplToJson(_$PaginationDtoImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'total': instance.total,
    };
