import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/constants.dart';
import '../../domain/user/value_objects/token.dart';
import '../../infrastructure/core/mixins/debounce_mixin.dart';
import '../../infrastructure/user/user_repository.dart';
import '../../presentation/core/common/widgets/app_flush_bar.dart';
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
  ) : super(UserState.init()) {
    _fetchAndUpdate();
  }

  final Token _token;
  final UserRepository _repository;

  DateTime? _lastRequestDateTime;

  @override
  void dispose() {
    cancelDebounce();
    super.dispose();
  }

  void refresh(BuildContext context) {
    final limitedUntil = _lastRequestDateTime?.add(minRequestInterval);
    final canRefresh = limitedUntil?.isBefore(DateTime.now()) ?? true;
    if (canRefresh) {
      state = state.copyWith(isRefreshing: true, failureOption: none());
      debounce(_fetchAndUpdate);
    } else {
      AppFlushBar.show(
        context,
        message: '您的请求过于频繁，请稍后重试。',
        severity: FlushBarSeverity.warning,
      );
    }
  }

  Future<void> _fetchAndUpdate() async {
    final failureOrSuccess = await _repository.fetchAndUpdate(_token);
    failureOrSuccess.fold(
      (failure) => state.copyWith(failureOption: optionOf(failure)),
      (_) => _get(),
    );
  }

  Future<void> _get() async {
    final failureOrUser = await _repository.get(_token);
    state = failureOrUser.fold(
      (failure) => state.copyWith(
        isRefreshing: false,
        failureOption: optionOf(failure),
      ),
      (user) {
        _lastRequestDateTime = DateTime.now();
        return state.copyWith(
          isRefreshing: false,
          userOption: optionOf(user),
        );
      },
    );
  }
}
