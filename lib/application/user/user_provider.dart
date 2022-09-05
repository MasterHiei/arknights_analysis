import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/constants.dart';
import '../../core/enums/ak_login_type.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/core/mixins/debounce_mixin.dart';
import '../../infrastructure/user/user_repository.dart';
import '../../presentation/core/common/widgets/app_flush_bar.dart';
import '../ak_login/ak_login_type_provider.dart';
import 'states/user_state.dart';
import 'uid_provider.dart';

final userProvider =
    StateNotifierProvider.autoDispose.family<UserNotifier, UserState, Token>(
  (ref, Token token) => UserNotifier(
    token,
    ref.watch(akLoginTypeProvider),
    ref.watch(uidProvider.notifier),
    ref.watch(userRepositoryProvider),
  ),
  dependencies: [akLoginTypeProvider],
);

class UserNotifier extends StateNotifier<UserState> with DebounceMixin {
  UserNotifier(
    this._token,
    this._loginTypeOption,
    this._uidProvider,
    this._repository,
  ) : super(UserState.init()) {
    _fetchAndUpdate();
  }

  final Token _token;
  final AkLoginType _loginTypeOption;
  final StateController<Option<Uid>> _uidProvider;
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
        message: '太快了吧！这还不到${minRequestInterval.inMinutes}分钟呢！',
        severity: FlushBarSeverity.warning,
      );
    }
  }

  Future<void> _fetchAndUpdate() async {
    final failureOrSuccess = await _repository.fetchAndUpdate(
      _token,
      loginType: _loginTypeOption,
    );
    await failureOrSuccess.fold(
      (failure) async => state = state.copyWith(
        failureOption: optionOf(failure),
      ),
      (_) => _get(),
    );
    state.userOption.fold(
      () {},
      (user) => _uidProvider.state = optionOf(user.uid),
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
