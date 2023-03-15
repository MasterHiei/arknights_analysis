import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/constants.dart';
import '../../core/enums/rarity.dart';
import '../core/common/value_objects/ts.dart';

part 'gacha_char.freezed.dart';

@freezed
class GachaChar with _$GachaChar {
  const factory GachaChar({
    required String name,
    required Rarity rarity,
    required bool isNew,
    required String pool,
    required Ts ts,
  }) = _GachaChar;

  const GachaChar._();

  String get prtsUrl => '${Constants.prts}/w/${Uri.encodeComponent(name)}';
}
