import 'package:fpdart/fpdart.dart';

import '../../../core/constants/constants.dart';

mixin LimitRequestMixin {
  Option<DateTime> _lastRequestDateTime = const None();
  Option<DateTime> get lastRequestDateTime => _lastRequestDateTime;

  void limit(
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

  void markAsCompleted() => _lastRequestDateTime = some(DateTime.now());
}
