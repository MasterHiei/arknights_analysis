import 'package:isar/isar.dart';

part 't_gacha_char.g.dart';

@Collection()
@Name('gacha_char')
class TGachaChar {
  int? id;

  late String name;

  late int rarity;

  late bool isNew;
}
