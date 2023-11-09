import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../generated/locale_keys.g.dart';

enum GachaRuleType {
  @JsonValue('NORMAL')
  normal('NORMAL'),

  @JsonValue('LIMITED')
  limited('LIMITED'),

  @JsonValue('LINKAGE')
  linkage('LINKAGE'),

  @JsonValue('ATTAIN')
  attain('ATTAIN'),

  @JsonValue('SINGLE')
  single('SINGLE'),

  @JsonValue('CLASSIC')
  classic('CLASSIC'),

  @JsonValue('FESCLASSIC')
  fesClassic('FESCLASSIC');

  const GachaRuleType(this.value);

  final String value;

  String get label {
    switch (this) {
      case GachaRuleType.normal:
      case GachaRuleType.single:
        return LocaleKeys.gacha_type_normal.tr();

      case GachaRuleType.limited:
        return LocaleKeys.gacha_type_limited.tr();

      case GachaRuleType.linkage:
        return LocaleKeys.gacha_type_linkage.tr();

      case GachaRuleType.attain:
        return LocaleKeys.gacha_type_attain.tr();

      case GachaRuleType.classic:
        return LocaleKeys.gacha_type_classic.tr();

      case GachaRuleType.fesClassic:
        return LocaleKeys.gacha_type_fesClassic.tr();
    }
  }

  static List<GachaRuleType> get independentGuarantee => [
        limited,
        linkage,
        attain,
      ];

  static List<GachaRuleType> get classics => [
        GachaRuleType.classic,
        GachaRuleType.fesClassic,
      ];

  static List<String> get classicPools => [
        '中坚寻访',
        '中坚甄选',
      ];
}
