import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/persistence_repository_impl.dart';
import '../repositories/persistence_repository.dart';

part 'get_cached_last_player_data_update_date_time.g.dart';

@riverpod
GetCachedLastPlayerDataUpdateDateTime getCachedLastPlayerDataUpdateDateTime(
  GetCachedLastPlayerDataUpdateDateTimeRef ref,
) =>
    GetCachedLastPlayerDataUpdateDateTime(
      ref.watch(persistenceRepositoryProvider),
    );

final class GetCachedLastPlayerDataUpdateDateTime
    implements IOUseCase<Option<DateTime>, NoParams> {
  const GetCachedLastPlayerDataUpdateDateTime(this.persistenceRepository);

  final PersistenceRepository persistenceRepository;

  @override
  IOEither<AppFailure, Option<DateTime>> call(NoParams params) =>
      persistenceRepository.getLastUpdateDateTime(params);
}
