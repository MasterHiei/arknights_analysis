import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/database_provider.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../core/database/app_database.dart';
import '../dtos/user_dto.dart';

part 'user_local_data_source.g.dart';

@riverpod
UserLocalDataSource userLocalDataSource(UserLocalDataSourceRef ref) =>
    UserLocalDataSourceImpl(ref.watch(databaseProvider));

abstract class UserLocalDataSource {
  Future<UserDto> get(Token token);

  Future<int> save(UserDto dto);
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  const UserLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<UserDto> get(Token token) => _db.usersDao.get(token.getOrCrash());

  @override
  Future<int> save(UserDto user) => _db.usersDao.replaceInto(user);
}
