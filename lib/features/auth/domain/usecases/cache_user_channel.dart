import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../repositories/auth_repository.dart';

part 'cache_user_channel.g.dart';

@riverpod
CacheUserChannel cacheUserChannel(CacheUserChannelRef ref) => CacheUserChannel(
      ref.watch(authRepositoryProvider),
    );

final class CacheUserChannel
    implements TaskUseCase<Unit, CacheUserChannelParams> {
  const CacheUserChannel(this.authRepository);

  final AuthRepository authRepository;

  @override
  TaskEither<AppFailure, Unit> call(CacheUserChannelParams params) =>
      authRepository.cacheUserChannel(params);
}
