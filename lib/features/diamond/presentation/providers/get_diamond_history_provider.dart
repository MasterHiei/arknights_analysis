import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/entities/diamond_change.dart';
import '../../domain/usecases/get_cached_diamond_history.dart';

part 'get_diamond_history_provider.g.dart';

@riverpod
class GetDiamondHistory extends _$GetDiamondHistory {
  @override
  AsyncValue<List<DiamondChange>> build() {
    _get();
    return const AsyncValue.loading();
  }

  Future<void> _get() async {
    const noParams = NoParams();
    final getHistoryTask = ref
        .read(getCachedUserProvider)
        .call(noParams)
        .map(
          (user) => GetCachedDiamondHistoryParams(user.uid),
        )
        .map(ref.read(getCachedDiamondHistoryProvider).call);

    state = await TaskEither.flatten(getHistoryTask)
        .match(
          (failure) => failure.toAsyncError<List<DiamondChange>>(),
          AsyncValue.data,
        )
        .run();
  }
}
