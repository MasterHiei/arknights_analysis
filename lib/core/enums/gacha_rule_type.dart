import 'package:freezed_annotation/freezed_annotation.dart';

enum GachaRuleType {
  @JsonValue('NORMAL')
  normal,

  @JsonValue('LIMITED')
  limited;
}
