import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

enum Rarity {
  @JsonValue(0)
  one(Color(0XFF616161), '1星'),

  @JsonValue(1)
  two(Color(0XFF5D4037), '2星'),

  @JsonValue(2)
  three(Color(0XFF388E3c), '3星'),

  @JsonValue(3)
  four(Color(0XFF0097A7), '4星'),

  @JsonValue(4)
  five(Color(0XFFE65100), '5星'),

  @JsonValue(5)
  six(Color(0XFFD32F2F), '6星');

  const Rarity(this.color, this.text);

  final Color color;
  final String text;
}

class RarityTypeConverter extends TypeConverter<Rarity, int> {
  const RarityTypeConverter();

  @override
  Rarity fromIsar(int object) => Rarity.values[object];

  @override
  int toIsar(Rarity object) => object.index;
}
