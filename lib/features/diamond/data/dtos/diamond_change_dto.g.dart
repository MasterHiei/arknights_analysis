// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diamond_change_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiamondChangeDtoImpl _$$DiamondChangeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DiamondChangeDtoImpl(
      type: json['type'] as String,
      before: (json['before'] as num).toInt(),
      after: (json['after'] as num).toInt(),
    );

Map<String, dynamic> _$$DiamondChangeDtoImplToJson(
        _$DiamondChangeDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'before': instance.before,
      'after': instance.after,
    };
