import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/ts.dart';
import '../../../../core/common/value_objects/uid.dart';

part 'exchange_log.freezed.dart';

@freezed
class ExchangeLog with _$ExchangeLog {
  const factory ExchangeLog({
    required String giftName,
    required String code,
    required Ts ts,
    required Uid uid,
  }) = _ExchangeLog;
}
