import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/gift_repository_impl.dart';
import '../entities/exchange_log.dart';
import '../repositories/gift_repository.dart';

part 'get_cached_gift_history.g.dart';

@riverpod
GetCachedGiftHistory getCachedGiftHistory(GetCachedGiftHistoryRef ref) =>
    GetCachedGiftHistory(ref.watch(giftRepositoryProvider));

final class GetCachedGiftHistory
    implements TaskUseCase<List<ExchangeLog>, GetCachedGiftHistoryParams> {
  const GetCachedGiftHistory(this.giftRepository);

  final GiftRepository giftRepository;

  @override
  TaskEither<AppFailure, List<ExchangeLog>> call(
    GetCachedGiftHistoryParams params,
  ) =>
      giftRepository.getHistory(params);
}
