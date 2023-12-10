import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/gacha/gacha_pool.dart';
import '../../infrastructure/gacha/gacha_repository.dart';

part 'filter_gacha_pool_provider.g.dart';

@riverpod
Future<GachaPool?> filterGachaPool(
  FilterGachaPoolRef ref, {
  required String byName,
}) async {
  final repository = ref.read(gachaRepositoryProvider);
  return (await repository.getPoolByName(byName).run()).match(
    (failure) => throw failure,
    (pool) => pool,
  );
}
