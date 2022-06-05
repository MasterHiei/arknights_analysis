// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GachaRecordDto _$$_GachaRecordDtoFromJson(Map<String, dynamic> json) =>
    _$_GachaRecordDto(
      ts: json['ts'] as int,
      pool: json['pool'] as String,
      chars: (json['chars'] as List<dynamic>)
          .map((e) => GachaCharDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      uid: json['uid'] as String? ?? '',
    );

Map<String, dynamic> _$$_GachaRecordDtoToJson(_$_GachaRecordDto instance) =>
    <String, dynamic>{
      'ts': instance.ts,
      'pool': instance.pool,
      'chars': instance.chars,
      'uid': instance.uid,
    };
