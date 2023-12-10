import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/user/value_objects/token.dart';
import '../../infrastructure/core/mixins/debounce_mixin.dart';
import '../../infrastructure/core/mixins/limited_request_mixin.dart';
import '../../infrastructure/user/user_repository.dart';
import 'logged_in_user_info_provider.dart';

part 'fetch_user_provider.g.dart';

@riverpod
class FetchUser extends _$FetchUser with DebounceMixin, LimitedRequestMixin {
  UserRepository get _repository => ref.read(userRepositoryProvider);

  @override
  Future<void> build() async {
    ref.onDispose(cancelDebounce);
    await _fetchAndUpdate();
  }

  void refresh({required void Function() onFailure}) => requestWithLimit(
        () => debounce(_fetchAndUpdate),
        onFailure: onFailure,
      );

  Future<void> _fetchAndUpdate() => ref.read(tokenProvider).match(
        () async {},
        (token) async {
          state = const AsyncValue.loading();
          final task = _repository.fetchAndUpdate(
            token,
            loginType: ref.read(loginTypeProvider),
          );
          final success = (await task.run()).match(
            (failure) => throw failure,
            (_) {
              markRequestCompleted();
              return _get(token);
            },
          );
          state = AsyncValue.data(success);
        },
      );

  Future<void> _get(Token token) async =>
      (await _repository.get(token).run()).match(
        (failure) => throw failure,
        ref.read(loggedInUserInfoProvider.notifier).updateUser,
      );
}
