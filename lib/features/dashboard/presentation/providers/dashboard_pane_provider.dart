import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_pane_provider.g.dart';

@riverpod
class DashboardPane extends _$DashboardPane {
  @override
  int build() => 0;

  void select(int index) {
    if (isSelected(index)) {
      return;
    }
    state = index;
  }

  bool isSelected(int index) => index == state;
}
