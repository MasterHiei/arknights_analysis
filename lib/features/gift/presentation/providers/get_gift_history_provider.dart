import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/entities/exchange_log.dart';
import '../../domain/usecases/get_cached_gift_history.dart';

part 'get_gift_history_provider.g.dart';

@riverpod
class GetGiftHistory extends _$GetGiftHistory {
  @override
  AsyncValue<List<ExchangeLog>> build() {
    _get();
    return const AsyncValue.loading();
  }

  Future<void> _get() async {
    const noParams = NoParams();
    final getHistoryTask = ref
        .read(getCachedUserProvider)
        .call(noParams)
        .map((user) => GetCachedGiftHistoryParams(uid: user.uid))
        .map(ref.read(getCachedGiftHistoryProvider).call);

    state = await TaskEither.flatten(getHistoryTask)
        .match(
          (failure) => failure.toAsyncError<List<ExchangeLog>>(),
          AsyncValue.data,
        )
        .run();
  }
}
