import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_error_view.dart';
import '../providers/refresh_gift_history_provider.dart';
import '../widgets/exchange_history_table.dart';

class GiftHistoryPage extends ConsumerWidget {
  const GiftHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(refreshGiftHistoryProvider).map(
          data: (_) => const ExchangeHistoryTable(),
          error: (_) => const AppErrorView(),
          loading: (_) => const Center(child: ProgressBar()),
        );
  }
}
