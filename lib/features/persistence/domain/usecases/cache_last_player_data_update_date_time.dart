import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/persistence_repository_impl.dart';
import '../repositories/persistence_repository.dart';

part 'cache_last_player_data_update_date_time.g.dart';

@riverpod
CacheLastPlayerDataUpdateDateTime cacheLastPlayerDataUpdateDateTime(
  CacheLastPlayerDataUpdateDateTimeRef ref,
) =>
    CacheLastPlayerDataUpdateDateTime(ref.watch(persistenceRepositoryProvider));

final class CacheLastPlayerDataUpdateDateTime
    implements TaskUseCase<Unit, NoParams> {
  const CacheLastPlayerDataUpdateDateTime(this.persistenceRepository);

  final PersistenceRepository persistenceRepository;
  @override
  TaskEither<AppFailure, Unit> call(NoParams params) =>
      persistenceRepository.cacheLastUpdateDateTime(params);
}
