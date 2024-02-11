import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/user_channel.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../repositories/auth_repository.dart';

part 'get_cached_user_channel.g.dart';

@riverpod
GetCachedUserChannel getCachedUserChannel(GetCachedUserChannelRef ref) =>
    GetCachedUserChannel(
      ref.watch(authRepositoryProvider),
    );

final class GetCachedUserChannel implements IOUseCase<UserChannel, NoParams> {
  const GetCachedUserChannel(this.authRepository);

  final AuthRepository authRepository;

  @override
  IOEither<AppFailure, UserChannel> call(NoParams params) =>
      authRepository.getUserChannel(params);
}
