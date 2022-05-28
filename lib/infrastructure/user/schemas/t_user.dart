import 'package:isar/isar.dart';

part 't_user.g.dart';

@Collection()
@Name('user')
class TUser {
  int? id;

  @Index(unique: true)
  late String uid;

  late String nickName;

  @Index(unique: true)
  late String token;
}
