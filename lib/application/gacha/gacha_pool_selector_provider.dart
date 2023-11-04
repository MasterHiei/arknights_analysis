import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/enums/gacha_rule_type.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'states/gacha_pool_selector_state.dart';

part 'gacha_pool_selector_provider.g.dart';

@riverpod
class GachaPoolSelector extends _$GachaPoolSelector {
  @override
  GachaPoolSelectorState build() {
    _getAllPools();
    return GachaPoolSelectorState.init();
  }

  void select(String? value) {
    if (value == state.value) {
      return;
    }
    state = state.copyWith(value: value);
  }

  Future<void> _getAllPools() => ref.watch(userProvider).fold(
        () async {},
        (user) async {
          final failureOrPools =
              await ref.read(gachaRepositoryProvider).getRecordedPools(
                    uid: user.uid,
                    includeRuleTypes: GachaRuleType.independentGuarantee,
                  );
          failureOrPools.fold(
            (_) {},
            (pools) {
              state = GachaPoolSelectorState.init(
                source: [
                  GachaRuleType.normal.label,
                  ...pools,
                ],
              );
            },
          );
        },
      );
}
