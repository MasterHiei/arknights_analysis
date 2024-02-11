import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../repositories/auth_repository.dart';

part 'fetch_user.g.dart';

@riverpod
FetchUser fetchUser(FetchUserRef ref) => FetchUser(
      ref.watch(authRepositoryProvider),
    );

final class FetchUser implements TaskUseCase<Unit, FetchUserParams> {
  const FetchUser(this.authRepository);

  final AuthRepository authRepository;

  @override
  TaskEither<AppFailure, Unit> call(FetchUserParams params) =>
      authRepository.fetchUser(params);
}
