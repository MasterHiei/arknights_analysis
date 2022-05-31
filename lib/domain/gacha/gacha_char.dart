import 'package:freezed_annotation/freezed_annotation.dart';

part 'gacha_char.freezed.dart';

@freezed
class GachaChar with _$GachaChar {
  const factory GachaChar({
    required String name,
    required int rarity,
    required bool isNew,
  }) = _GachaChar;
}
