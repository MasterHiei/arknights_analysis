import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../repositories/auth_repository.dart';

part 'cache_token.g.dart';

@riverpod
CacheToken cacheToken(CacheTokenRef ref) => CacheToken(
      ref.watch(authRepositoryProvider),
    );

final class CacheToken implements TaskUseCase<Unit, CacheTokenParams> {
  const CacheToken(this.authRepository);

  final AuthRepository authRepository;

  @override
  TaskEither<AppFailure, Unit> call(CacheTokenParams params) =>
      authRepository.cacheToken(params);
}
