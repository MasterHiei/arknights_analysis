import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/core/common/value_objects/ts.dart';
import '../../../domain/gacha/gacha_record.dart';
import '../../../domain/user/value_objects/uid.dart';
import 'gacha_char_dto.dart';

part 'gacha_record_dto.freezed.dart';
part 'gacha_record_dto.g.dart';

@freezed
class GachaRecordDto with _$GachaRecordDto {
  const GachaRecordDto._();

  const factory GachaRecordDto({
    required int ts,
    required String pool,
    required List<GachaCharDto> chars,
    @JsonKey(defaultValue: '') required String uid,
  }) = _GachaRecordDto;

  factory GachaRecordDto.fromJson(Json json) => _$GachaRecordDtoFromJson(json);

  GachaRecord toDomain() => GachaRecord(
        ts: _ts,
        pool: pool,
        chars: chars.map((char) => char.toDomain(pool: pool, ts: _ts)).toList(),
        uid: Uid(uid),
      );

  Ts get _ts => Ts(ts);
}
