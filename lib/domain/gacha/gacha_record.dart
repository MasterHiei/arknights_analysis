import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/common/value_objects/ts.dart';
import 'gacha_char.dart';

part 'gacha_record.freezed.dart';

@freezed
class GachaRecord with _$GachaRecord {
  const factory GachaRecord({
    required Ts ts,
    required String pool,
    required List<GachaChar> chars,
  }) = _GachaRecord;
}
