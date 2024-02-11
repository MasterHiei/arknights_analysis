import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/ts.dart';
import '../../../../core/common/value_objects/uid.dart';
import '../../../../core/types/types.dart';
import '../../domain/entities/exchange_log.dart';

part 'exchange_log_dto.freezed.dart';
part 'exchange_log_dto.g.dart';

@freezed
class ExchangeLogDto with _$ExchangeLogDto {
  const factory ExchangeLogDto({
    required String giftName,
    required String code,
    required int ts,
    @JsonKey(defaultValue: '') required String uid,
  }) = _ExchangeLogDto;

  factory ExchangeLogDto.fromJson(Json json) => _$ExchangeLogDtoFromJson(json);

  const ExchangeLogDto._();

  ExchangeLog toDomain() => ExchangeLog(
        giftName: giftName,
        code: code,
        ts: Ts(ts),
        uid: Uid(uid),
      );
}
