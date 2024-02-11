import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/pagination.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/gacha_repository_impl.dart';
import '../repositories/gacha_repository.dart';

part 'fetch_gacha_history.g.dart';

@riverpod
FetchGachaHistory fetchGachaHistory(FetchGachaHistoryRef ref) =>
    FetchGachaHistory(
      ref.watch(gachaRepositoryProvider),
    );

final class FetchGachaHistory
    implements TaskUseCase<Pagination, FetchGachaHistoryParams> {
  const FetchGachaHistory(this.gachaRepository);

  final GachaRepository gachaRepository;

  @override
  TaskEither<AppFailure, Pagination> call(FetchGachaHistoryParams params) =>
      gachaRepository.fetchHistory(params);
}
