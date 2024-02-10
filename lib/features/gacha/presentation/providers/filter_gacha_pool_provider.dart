import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/gacha_pool.dart';
import '../../domain/usecases/get_gacha_pool.dart';

part 'filter_gacha_pool_provider.g.dart';

@riverpod
Future<GachaPool> filterGachaPool(
  FilterGachaPoolRef ref, {
  required String poolName,
}) async {
  final params = GetGachaPoolParams(poolName: poolName);
  return ref
      .read(getGachaPoolProvider)
      .call(params)
      .match(
        (failure) => throw failure,
        (pool) => pool,
      )
      .run();
}
