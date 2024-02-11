import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/gacha_repository_impl.dart';
import '../entities/gacha_char.dart';
import '../repositories/gacha_repository.dart';

part 'get_cached_gacha_history.g.dart';

@riverpod
GetCachedGachaHistory getCachedGachaHistory(GetCachedGachaHistoryRef ref) =>
    GetCachedGachaHistory(
      ref.watch(gachaRepositoryProvider),
    );

final class GetCachedGachaHistory
    implements TaskUseCase<List<GachaChar>, GetCachedGachaHistoryParams> {
  const GetCachedGachaHistory(this.gachaRepository);

  final GachaRepository gachaRepository;

  @override
  TaskEither<AppFailure, List<GachaChar>> call(
    GetCachedGachaHistoryParams params,
  ) =>
      gachaRepository.getHistory(params);
}
