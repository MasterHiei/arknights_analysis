// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diamond_record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiamondRecordDtoImpl _$$DiamondRecordDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DiamondRecordDtoImpl(
      ts: (json['ts'] as num).toInt(),
      operation: json['operation'] as String,
      changes: (json['changes'] as List<dynamic>)
          .map((e) => DiamondChangeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      uid: json['uid'] as String? ?? '',
    );

Map<String, dynamic> _$$DiamondRecordDtoImplToJson(
        _$DiamondRecordDtoImpl instance) =>
    <String, dynamic>{
      'ts': instance.ts,
      'operation': instance.operation,
      'changes': instance.changes,
      'uid': instance.uid,
    };
