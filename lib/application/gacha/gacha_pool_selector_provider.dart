import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/gacha_rule_type.dart';
import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/uid_provider.dart';

final gachaPoolSelectorProvider = ChangeNotifierProvider.autoDispose(
  (ref) => GachaPoolSelectorNotifier(
    ref.watch(uidProvider),
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaPoolSelectorNotifier extends ChangeNotifier {
  GachaPoolSelectorNotifier(this._uid, this._repository) {
    _get();
  }

  final Option<Uid> _uid;
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
    _uid.fold(
      () {},
      (uid) async {
        final failureOrPools = await _repository.getPools(
          uid: uid,
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
