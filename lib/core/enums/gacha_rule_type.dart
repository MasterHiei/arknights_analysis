import 'package:freezed_annotation/freezed_annotation.dart';

enum GachaRuleType {
  @JsonValue('NORMAL')
  normal('NORMAL'),

  @JsonValue('LIMITED')
  limited('LIMITED');

  const GachaRuleType(this.value);

  final String value;

  String get title {
    switch (this) {
      case GachaRuleType.normal:
        return '常规卡池';

      case GachaRuleType.limited:
        return '限定卡池';
    }
  }
}
