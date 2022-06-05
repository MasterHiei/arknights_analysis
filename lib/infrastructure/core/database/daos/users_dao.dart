import 'package:drift/drift.dart';

import '../../../user/dtos/user_dto.dart';
import '../app_database.dart';
import '../tables/users.dart';

part 'users_dao.g.dart';

@DriftAccessor(tables: [Users])
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  UsersDao(AppDatabase db) : super(db);

  Stream<UserDto?> watch(String token) {
    final query = select(users)..where((tbl) => tbl.token.equals(token));
    return query.watchSingleOrNull().map((user) {
      if (user == null) {
        return null;
      }
      return UserDto.fromJson(user.toJson());
    });
  }

  Future<int> replaceInto(UserDto user) async {
    final entity = User.fromJson(user.toJson());
    return into(users).insertOnConflictUpdate(entity);
  }

  Future<void> clear() => delete(users).go();
}
