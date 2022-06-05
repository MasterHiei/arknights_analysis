import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums/rarity.dart';

part 'gacha_char.freezed.dart';

@freezed
class GachaChar with _$GachaChar {
  const factory GachaChar({
    required String name,
    required Rarity rarity,
    required bool isNew,
  }) = _GachaChar;
}
