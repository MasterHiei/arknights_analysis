import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum Rarity {
  @JsonValue(0)
  one(Color(0XFF9F9F9F), '1星'),

  @JsonValue(1)
  two(Color(0XFFDCE537), '2星'),

  @JsonValue(2)
  three(Color(0XFF388E3C), '3星'),

  @JsonValue(3)
  four(Color(0XFFA231FF), '4星'),

  @JsonValue(4)
  five(Color(0XFFCC7A00), '5星'),

  @JsonValue(5)
  six(Color(0XFFEE5700), '6星');

  const Rarity(this.color, this.title);

  final Color color;
  final String title;

  String get fullTitle => '$title干员';

  static List<Rarity> get rares => [Rarity.five, Rarity.six];

  static List<Rarity> get poolExclusive => [
        Rarity.three,
        Rarity.four,
        Rarity.five,
        Rarity.six,
      ];
}
