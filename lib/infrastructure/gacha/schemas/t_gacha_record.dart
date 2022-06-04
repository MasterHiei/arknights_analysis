import 'package:isar/isar.dart';

import 't_gacha_char.dart';

part 't_gacha_record.g.dart';

@Collection()
@Name('gacha_record')
class TGachaRecord {
  int? id;

  @Index()
  @Index(composite: [CompositeIndex('uid')], unique: true)
  late int ts;

  late String pool;

  final chars = IsarLinks<TGachaChar>();

  @Index()
  late String uid;
}
