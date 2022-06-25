import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/value_objects/uid.dart';

part 'get_gacha_history_params.freezed.dart';

@freezed
class GetGachaHistoryParams with _$GetGachaHistoryParams {
  const factory GetGachaHistoryParams({
    required Uid uid,
    String? pool,
  }) = _GetGachaHistoryParams;
}
