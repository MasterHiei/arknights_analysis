import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/gacha_repository_impl.dart';
import '../entities/gacha_pool.dart';
import '../repositories/gacha_repository.dart';

part 'get_gacha_pool.g.dart';

@riverpod
GetGachaPool getGachaPool(GetGachaPoolRef ref) => GetGachaPool(
      ref.watch(gachaRepositoryProvider),
    );

final class GetGachaPool implements TaskUseCase<GachaPool, GetGachaPoolParams> {
  const GetGachaPool(this.gachaRepository);

  final GachaRepository gachaRepository;

  @override
  TaskEither<AppFailure, GachaPool> call(
    GetGachaPoolParams params,
  ) =>
      gachaRepository.getPool(params);
}
