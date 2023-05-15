import 'package:freezed_annotation/freezed_annotation.dart';

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
        return '标准寻访';

      case GachaRuleType.limited:
        return '限定寻访';

      case GachaRuleType.linkage:
        return '联动寻访';

      case GachaRuleType.attain:
        return '必NEW寻访';

      case GachaRuleType.classic:
        return '中坚寻访';

      case GachaRuleType.fesClassic:
        return '中坚甄选';
    }
  }

  static List<GachaRuleType> get independentGuarantee => [
        limited,
        linkage,
        attain,
        classic,
        fesClassic,
      ];
}
