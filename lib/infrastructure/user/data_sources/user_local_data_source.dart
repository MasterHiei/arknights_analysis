import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../../core/providers.dart';
import '../../../domain/user/value_objects/token.dart';
import '../dtos/user_dto.dart';
import '../schemas/t_user.dart';

final userLocalDataSourceProvider = Provider.autoDispose<UserLocalDataSource>(
  (ref) => UserLocalDataSourceImpl(ref.watch(isarProvider)),
);

abstract class UserLocalDataSource {
  Future<UserDto?> findBy(Token token);

  Future<int> save(UserDto dto);
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  const UserLocalDataSourceImpl(this._isar);

  final Isar _isar;

  @override
  Future<UserDto?> findBy(Token token) async {
    final user =
        await _isar.tUsers.where().tokenEqualTo(token.getOrCrash()).findFirst();
    return UserDto.fromSchema(user!);
  }

  @override
  Future<int> save(UserDto dto) => _isar.writeTxn(
        (isar) => isar.tUsers.put(
          dto.toSchema(),
          replaceOnConflict: true,
        ),
      );
}
