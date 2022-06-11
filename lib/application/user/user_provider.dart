import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/value_objects/token.dart';
import '../../infrastructure/core/mixins/debounce_mixin.dart';
import '../../infrastructure/user/user_repository.dart';
import 'states/user_state.dart';

final userProvider =
    StateNotifierProvider.autoDispose.family<UserNotifier, UserState, Token>(
  (ref, Token token) => UserNotifier(
    token,
    ref.watch(userRepositoryProvider),
  ),
);

class UserNotifier extends StateNotifier<UserState> with DebounceMixin {
  UserNotifier(
    this._token,
    this._repository,
  ) : super(const UserState.init()) {
    _fetchAndUpdate();
  }

  final Token _token;
  final UserRepository _repository;

  @override
  void dispose() {
    cancelDebounce();
    super.dispose();
  }

  Future<void> refresh() async => debounce(_fetchAndUpdate);

  Future<void> _fetchAndUpdate() async {
    state = const UserState.fetching();
    final failureOrSuccess = await _repository.fetchAndUpdate(_token);
    failureOrSuccess.fold(
      (failure) => state = UserState.failure(failure),
      (_) => _get(),
    );
  }

  Future<void> _get() async {
    final failureOrUser = await _repository.get(_token);
    state = failureOrUser.fold(
      (failure) => UserState.failure(failure),
      (user) => UserState.success(user),
    );
  }
}
