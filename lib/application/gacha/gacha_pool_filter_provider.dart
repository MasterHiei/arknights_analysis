import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/gacha/gacha_pool.dart';
import '../../infrastructure/gacha/gacha_repository.dart';

final gachaPoolFilterProvider = StateNotifierProvider.autoDispose
    .family<GachaPoolFilterNotifier, AsyncValue<GachaPool?>, String>(
  (ref, String name) => GachaPoolFilterNotifier(
    name,
    ref.watch(gachaRepositoryProvider),
  ),
  dependencies: [
    gachaRepositoryProvider,
  ],
);

class GachaPoolFilterNotifier extends StateNotifier<AsyncValue<GachaPool?>> {
  GachaPoolFilterNotifier(
    this._name,
    this._repository,
  ) : super(const AsyncValue.loading()) {
    _get();
  }

  final String _name;
  final GachaRepository _repository;

  Future<void> _get() async {
    state = const AsyncValue.loading();
    final failureOrPool = await _repository.getPoolByName(_name);
    state = await AsyncValue.guard(
      () async => failureOrPool.fold(
        (failure) => throw failure,
        (pool) => pool,
      ),
    );
  }
}
