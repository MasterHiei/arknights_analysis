import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/common/value_objects/token.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/enums/prefs_keys.dart';
import '../../../../core/enums/user_channel.dart';
import '../../../../core/providers/database_provider.dart';
import '../../../../core/providers/prefs_provider.dart';
import '../dtos/user_dto.dart';

part 'auth_local_data_source.g.dart';

@riverpod
AuthLocalDataSource authLocalDataSource(AuthLocalDataSourceRef ref) =>
    AuthLocalDataSourceImpl(
      ref.watch(prefsProvider),
      ref.watch(databaseProvider),
    );

abstract class AuthLocalDataSource {
  String? getUserChannel();

  Future<void> saveUserChannel(UserChannel channel);

  Token getToken();

  Future<void> saveToken(Token token);

  Future<UserDto> getUser(Token token);

  Future<int> saveUser(UserDto dto);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  const AuthLocalDataSourceImpl(this._prefs, this._db);

  final SharedPreferences _prefs;
  final AppDatabase _db;

  @override
  String? getUserChannel() => _prefs.getString(PrefsKeys.userChannel.name);

  @override
  Future<void> saveUserChannel(UserChannel channel) =>
      _prefs.setString(PrefsKeys.userChannel.name, channel.id);

  @override
  Token getToken() => Token(_prefs.getString(PrefsKeys.token.name));

  @override
  Future<void> saveToken(Token token) =>
      _prefs.setString(PrefsKeys.token.name, token.getOrCrash());

  @override
  Future<UserDto> getUser(Token token) => _db.usersDao.get(token.getOrCrash());

  @override
  Future<int> saveUser(UserDto user) => _db.usersDao.replaceInto(user);
}
