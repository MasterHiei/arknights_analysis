import 'dart:async';

import '../../../core/constants/constants.dart';

class DebounceMixin {
  Timer? _timer;

  void debounce(void Function() action) {
    if (_timer != null) {
      _timer?.cancel();
    }
    _timer = Timer(debouceDuration, action);
  }

  void cancelDebounce() {
    _timer?.cancel();
  }
}
