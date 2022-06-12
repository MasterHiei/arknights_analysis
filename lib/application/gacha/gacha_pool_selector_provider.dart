import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/gacha/gacha_repository.dart';

final gachaPoolSelectorProvider = ChangeNotifierProvider.autoDispose(
  (ref) => GachaPoolSelectorNotifier(
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaPoolSelectorNotifier extends ChangeNotifier {
  GachaPoolSelectorNotifier(this._repository) {
    _get();
  }

  final GachaRepository _repository;

  final _pools = <String>[];
  List<String> get pools => _pools;

  String? _selectedPool;
  String? get selectedPool => _selectedPool;

  void select(String? pool) {
    if (pool == _selectedPool) {
      return;
    }
    _selectedPool = pool;
    notifyListeners();
  }

  Future<void> _get() async {
    final failureOrPools = await _repository.getPools();
    failureOrPools.fold(
      (_) {},
      (pools) => _pools.addAll(pools),
    );
    notifyListeners();
  }
}
