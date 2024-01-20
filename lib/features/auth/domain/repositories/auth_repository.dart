import 'package:fpdart/fpdart.dart';

import '../../../../core/common/value_objects/token.dart';
import '../../../../core/enums/user_channel.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../entities/user.dart';

abstract class AuthRepository {
  IOEither<AppFailure, UserChannel> getUserChannel(NoParams params);

  TaskEither<AppFailure, Unit> cacheUserChannel(CacheUserChannelParams params);

  IOEither<AppFailure, Token> getToken(NoParams params);

  TaskEither<AppFailure, Unit> cacheToken(CacheTokenParams params);

  TaskEither<AppFailure, Unit> fetchUser(FetchUserParams params);

  TaskEither<AppFailure, User> getCachedUser(NoParams params);
}
