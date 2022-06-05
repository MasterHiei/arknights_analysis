import 'package:isar/isar.dart';

import '../../../core/enums/rarity.dart';

part 't_gacha_char.g.dart';

@Collection()
@Name('gacha_char')
class TGachaChar {
  int? id;

  late String name;

  @RarityTypeConverter()
  late Rarity rarity;

  late bool isNew;
}
