import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

part 'get_cached_user.g.dart';

@riverpod
GetCachedUser getCachedUser(GetCachedUserRef ref) => GetCachedUser(
      ref.watch(authRepositoryProvider),
    );

final class GetCachedUser implements TaskUseCase<User, NoParams> {
  const GetCachedUser(this.authRepository);

  final AuthRepository authRepository;

  @override
  TaskEither<AppFailure, User> call(NoParams params) =>
      authRepository.getCachedUser(params);
}
