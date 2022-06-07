import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum Rarity {
  @JsonValue(0)
  one(Color(0XFF9F9F9F), '1星干员'),

  @JsonValue(1)
  two(Color(0XFFDCE537), '2星干员'),

  @JsonValue(2)
  three(Color(0XFF388E3C), '3星干员'),

  @JsonValue(3)
  four(Color(0XFFA231FF), '4星干员'),

  @JsonValue(4)
  five(Color(0XFFCC7A00), '5星干员'),

  @JsonValue(5)
  six(Color(0XFFEE5700), '6星干员');

  const Rarity(this.color, this.title);

  final Color color;
  final String title;

  static List<Rarity> get rares => [Rarity.six];

  static List<Rarity> get poolExclusive => [
        Rarity.three,
        Rarity.four,
        Rarity.five,
        Rarity.six,
      ];
}
