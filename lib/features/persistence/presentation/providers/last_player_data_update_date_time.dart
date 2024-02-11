import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/usecases/get_cached_last_player_data_update_date_time.dart';

part 'last_player_data_update_date_time.g.dart';

@riverpod
Option<DateTime> lastPlayerDataUpdateDateTime(
  LastPlayerDataUpdateDateTimeRef ref,
) =>
    ref
        .read(getCachedLastPlayerDataUpdateDateTimeProvider)
        .call(const NoParams())
        .match((_) => const None(), (option) => option)
        .run();
