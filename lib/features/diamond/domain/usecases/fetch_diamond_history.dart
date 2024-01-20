import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/pagination.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/diamond_repository_impl.dart';
import '../repositories/diamond_repository.dart';

part 'fetch_diamond_history.g.dart';

@riverpod
FetchDiamondHistory fetchDiamondHistory(FetchDiamondHistoryRef ref) =>
    FetchDiamondHistory(
      ref.watch(diamondRepositoryProvider),
    );

final class FetchDiamondHistory
    implements TaskUseCase<Pagination, FetchDiamondHistoryParams> {
  const FetchDiamondHistory(this.diamondRepository);

  final DiamondRepository diamondRepository;

  @override
  TaskEither<AppFailure, Pagination> call(FetchDiamondHistoryParams params) =>
      diamondRepository.fetchHistory(params);
}
