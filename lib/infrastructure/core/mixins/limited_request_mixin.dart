import 'package:fpdart/fpdart.dart';

import '../../../core/constants/constants.dart';

mixin LimitedRequestMixin {
  var _lastRequestDateTime = none<DateTime>();
  Option<DateTime> get lastRequestDateTime => _lastRequestDateTime;

  void requestWithLimit(
    void Function() request, {
    void Function()? onFailure,
  }) =>
      lastRequestDateTime.match(
        request,
        (lastDateTime) {
          final limitedUntil = lastDateTime.add(Constants.minRequestInterval);
          final canRequest = limitedUntil.isBefore(DateTime.now());
          if (canRequest) {
            request();
          } else {
            onFailure?.call();
          }
        },
      );

  void markRequestCompleted() => _lastRequestDateTime = some(DateTime.now());
}
