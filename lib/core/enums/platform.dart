import 'package:freezed_annotation/freezed_annotation.dart';

enum Platform {
  @JsonValue(0)
  ios('iOS'),

  @JsonValue(1)
  android('Android');

  const Platform(this.label);

  final String label;
}
