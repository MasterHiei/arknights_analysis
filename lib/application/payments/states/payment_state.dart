import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.fetching() = _Fetching;

  const factory PaymentState.success() = _Success;

  const factory PaymentState.failure(AppFailure failure) = _Failure;
}
