import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/gacha_repository_impl.dart';
import '../entities/gacha_stats.dart';
import '../repositories/gacha_repository.dart';

part 'get_gacha_stats.g.dart';

@riverpod
GetGachaStats getGachaStats(GetGachaStatsRef ref) => GetGachaStats(
      ref.watch(gachaRepositoryProvider),
    );

final class GetGachaStats
    implements TaskUseCase<GachaStats, GetGachaStatsParams> {
  const GetGachaStats(this.gachaRepository);

  final GachaRepository gachaRepository;

  @override
  TaskEither<AppFailure, GachaStats> call(GetGachaStatsParams params) =>
      gachaRepository.getStats(params);
}
