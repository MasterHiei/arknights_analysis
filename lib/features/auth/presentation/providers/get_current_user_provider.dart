import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/get_cached_user.dart';

part 'get_current_user_provider.g.dart';

@riverpod
class GetCurrentUser extends _$GetCurrentUser {
  @override
  AsyncValue<User> build() {
    _get();
    return const AsyncValue.loading();
  }

  Future<void> _get() async {
    state = const AsyncValue.loading();

    const params = NoParams();
    state = await ref
        .read(getCachedUserProvider)
        .call(params)
        .match(
          (failure) => AsyncValue<User>.error(failure, StackTrace.current),
          (user) => AsyncValue.data(user),
        )
        .run();
  }
}
