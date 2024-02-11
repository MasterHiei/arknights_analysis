import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/diamond_repository_impl.dart';
import '../entities/diamond_change.dart';
import '../repositories/diamond_repository.dart';

part 'get_cached_diamond_history.g.dart';

@riverpod
GetCachedDiamondHistory getCachedDiamondHistory(
  GetCachedDiamondHistoryRef ref,
) =>
    GetCachedDiamondHistory(
      ref.watch(diamondRepositoryProvider),
    );

final class GetCachedDiamondHistory
    implements TaskUseCase<List<DiamondChange>, GetCachedDiamondHistoryParams> {
  const GetCachedDiamondHistory(this.diamondRepository);

  final DiamondRepository diamondRepository;

  @override
  TaskEither<AppFailure, List<DiamondChange>> call(
    GetCachedDiamondHistoryParams params,
  ) =>
      diamondRepository.getHistory(params);
}
