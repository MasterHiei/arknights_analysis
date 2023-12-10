import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/payments/payment_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'fetch_payments_provider.g.dart';

@riverpod
Future<void> fetchPayments(FetchPaymentsRef ref) =>
    ref.watch(userProvider).match(
      () async {},
      (user) async {
        final failureOrSuccess = await ref
            .read(paymentRepositoryProvider)
            .fetchAndSave(user.token, uid: user.uid);
        return failureOrSuccess.match((failure) => throw failure, (_) {});
      },
    );
