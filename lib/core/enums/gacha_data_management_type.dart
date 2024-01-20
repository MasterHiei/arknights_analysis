import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/persistence/persistence_provider.dart';
import '../routing/router.dart';

enum GachaDataManagementType {
  import,
  export;

  String get label {
    switch (this) {
      case GachaDataManagementType.import:
        return '导入';

      case GachaDataManagementType.export:
        return '导出';
    }
  }

  void onPressed(WidgetRef ref) {
    switch (this) {
      case GachaDataManagementType.import:
        router.pop();
        ref.read(persistenceProvider.notifier).import();

      case GachaDataManagementType.export:
        router.pop();
        ref.read(persistenceProvider.notifier).export();
    }
  }
}
