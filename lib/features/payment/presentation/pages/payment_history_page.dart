import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/app_error_view.dart';
import '../providers/refresh_payment_history_provider.dart';
import '../widgets/payment_history_table.dart';

class PaymentHistoryPage extends ConsumerWidget {
  const PaymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(refreshPaymentHistoryProvider).map(
          data: (_) => const PaymentHistoryTable(),
          error: (_) => const AppErrorView(),
          loading: (_) => const Center(child: ProgressBar()),
        );
  }
}
