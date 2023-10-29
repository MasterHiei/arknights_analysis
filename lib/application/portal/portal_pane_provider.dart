import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'portal_pane_provider.g.dart';

@riverpod
class PortalPane extends _$PortalPane {
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
