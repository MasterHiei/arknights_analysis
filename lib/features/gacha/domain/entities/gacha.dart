import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/pagination.dart';
import 'gacha_record.dart';

part 'gacha.freezed.dart';

@freezed
class Gacha with _$Gacha {
  const factory Gacha({
    required List<GachaRecord> records,
    required Pagination pagination,
  }) = _Gacha;
}
