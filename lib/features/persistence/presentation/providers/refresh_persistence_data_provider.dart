import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/mixins/limit_request_mixin.dart';
import '../../../auth/presentation/providers/refresh_user_provider.dart';
import '../../../diamond/presentation/providers/refresh_diamond_history_provider.dart';
import '../../../gacha/presentation/providers/refresh_gacha_history_provider.dart';

part 'refresh_persistence_data_provider.g.dart';

@riverpod
class RefreshPersistenceData extends _$RefreshPersistenceData
    with LimitRequestMixin {
  @override
  AsyncValue<Unit> build() => const AsyncValue.data(unit);

  Future<void> call({
    required void Function() onFailure,
  }) async =>
      limit(
        _refreshAll,
        onFailure: onFailure,
      );

  Future<void> _refreshAll() async {
    state = const AsyncValue.loading();

    await ref.read(refreshUserProvider.notifier).call();
    await Future.wait([
      ref.read(refreshGachaHistoryProvider.notifier).call(),
      ref.read(refreshDiamondHistoryProvider.notifier).call(),
    ]);

    state = const AsyncValue.data(unit);
  }
}
