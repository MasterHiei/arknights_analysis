import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/gacha_repository_impl.dart';
import '../repositories/gacha_repository.dart';

part 'get_recorded_gacha_pools.g.dart';

@riverpod
GetRecordedGachaPools getRecordedGachaPools(GetRecordedGachaPoolsRef ref) =>
    GetRecordedGachaPools(
      ref.watch(gachaRepositoryProvider),
    );

final class GetRecordedGachaPools
    implements TaskUseCase<List<String>, GetRecordedGachaPoolsParams> {
  const GetRecordedGachaPools(this.gachaRepository);

  final GachaRepository gachaRepository;

  @override
  TaskEither<AppFailure, List<String>> call(
    GetRecordedGachaPoolsParams params,
  ) =>
      gachaRepository.getRecordedPools(params);
}
