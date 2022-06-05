import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../core/database/app_database.dart';
import '../dtos/user_dto.dart';

final userLocalDataSourceProvider = Provider.autoDispose<UserLocalDataSource>(
  (ref) => UserLocalDataSourceImpl(ref.watch(dbProvider)),
);

abstract class UserLocalDataSource {
  Stream<UserDto?> watch(Token token);

  Future<int> save(UserDto dto);
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  const UserLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Stream<UserDto?> watch(Token token) => _db.usersDao.watch(token.getOrCrash());

  @override
  Future<int> save(UserDto user) => _db.usersDao.replaceInto(user);
}
