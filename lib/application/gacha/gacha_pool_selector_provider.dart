import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/gacha_rule_type.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/user_provider.dart';

final gachaPoolSelectorProvider = ChangeNotifierProvider.autoDispose(
  (ref) => GachaPoolSelectorNotifier(
    ref.watch(userProvider),
    ref.watch(gachaRepositoryProvider),
  ),
  dependencies: [
    userProvider,
    gachaRepositoryProvider,
  ],
);

final selectedGachaPoolProvider = Provider.autoDispose(
  (ref) => ref.watch(gachaPoolSelectorProvider).selectedPool,
);

class GachaPoolSelectorNotifier extends ChangeNotifier {
  GachaPoolSelectorNotifier(this._userOption, this._repository) {
    _get();
  }

  final Option<User> _userOption;
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

  void refresh() => _get();

  Future<void> _get() async {
    _userOption.fold(
      () {},
      (user) async {
        final failureOrPools = await _repository.getPools(
          uid: user.uid,
          includeRuleTypes: GachaRuleType.independentGuarantee,
        );
        failureOrPools.fold(
          (_) {},
          (pools) => _pools
            ..clear()
            ..addAll(pools),
        );
        notifyListeners();
      },
    );
  }
}
