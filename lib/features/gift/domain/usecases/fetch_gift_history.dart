import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/gift_repository_impl.dart';
import '../repositories/gift_repository.dart';

part 'fetch_gift_history.g.dart';

@riverpod
FetchGiftHistory fetchGiftHistory(FetchGiftHistoryRef ref) =>
    FetchGiftHistory(ref.watch(giftRepositoryProvider));

final class FetchGiftHistory
    implements TaskUseCase<Unit, FetchGiftHistoryParams> {
  const FetchGiftHistory(this.giftRepository);

  final GiftRepository giftRepository;

  @override
  TaskEither<AppFailure, Unit> call(FetchGiftHistoryParams params) =>
      giftRepository.fetchHistory(params);
}
