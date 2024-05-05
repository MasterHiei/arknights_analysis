// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gacha_record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GachaRecordDtoImpl _$$GachaRecordDtoImplFromJson(Map<String, dynamic> json) =>
    _$GachaRecordDtoImpl(
      ts: (json['ts'] as num).toInt(),
      pool: json['pool'] as String,
      chars: (json['chars'] as List<dynamic>)
          .map((e) => GachaCharDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      uid: json['uid'] as String? ?? '',
    );

Map<String, dynamic> _$$GachaRecordDtoImplToJson(
        _$GachaRecordDtoImpl instance) =>
    <String, dynamic>{
      'ts': instance.ts,
      'pool': instance.pool,
      'chars': instance.chars,
      'uid': instance.uid,
    };
