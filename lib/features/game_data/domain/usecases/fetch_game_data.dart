import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/game_data_repository_impl.dart';
import '../repositories/game_data_repository.dart';

part 'fetch_game_data.g.dart';

@riverpod
FetchGameData fetchGameData(FetchGameDataRef ref) => FetchGameData(
      ref.watch(gameDataRepositoryProvider),
    );

final class FetchGameData implements TaskUseCase<Unit, FetchGameDataParams> {
  const FetchGameData(this.gameDataRepository);

  final GameDataRepository gameDataRepository;

  @override
  TaskEither<AppFailure, Unit> call(FetchGameDataParams params) =>
      gameDataRepository.fetch(params);
}
