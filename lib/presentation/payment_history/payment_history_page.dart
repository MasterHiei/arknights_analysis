import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/payments/payment_provider.dart';
import '../core/common/widgets/app_error_view.dart';
import 'widgets/index.dart';

class PaymentHistoryPage extends ConsumerWidget {
  const PaymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAndSavePaymentsProvider).map(
          data: (_) => const PaymentHistoryTable(),
          error: (_) => const AppErrorView(),
          loading: (_) => const Center(child: ProgressBar()),
        );
  }
}
