import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/value_objects/token.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../repositories/auth_repository.dart';

part 'get_cached_token.g.dart';

@riverpod
GetCachedToken getCachedToken(GetCachedTokenRef ref) => GetCachedToken(
      ref.watch(authRepositoryProvider),
    );

final class GetCachedToken implements IOUseCase<Token, NoParams> {
  const GetCachedToken(this.authRepository);

  final AuthRepository authRepository;

  @override
  IOEither<AppFailure, Token> call(NoParams params) =>
      authRepository.getToken(params);
}
