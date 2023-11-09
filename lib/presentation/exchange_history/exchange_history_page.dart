import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/payments/fetch_payments_provider.dart';
import '../core/common/widgets/app_error_view.dart';
import 'widgets/index.dart';

class ExchangeHistoryPage extends ConsumerWidget {
  const ExchangeHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchPaymentsProvider).map(
          data: (_) => const ExchangeHistoryTable(),
          error: (_) => const AppErrorView(),
          loading: (_) => const Center(child: ProgressBar()),
        );
  }
}
