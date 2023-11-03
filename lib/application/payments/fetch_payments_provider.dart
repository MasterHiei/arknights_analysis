import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/payments/payment_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'fetch_payments_provider.g.dart';

@riverpod
Future<void> fetchPayments(FetchPaymentsRef ref) =>
    ref.watch(userProvider).fold(
      () async {},
      (user) async {
        final failureOrSuccess = await ref
            .read(paymentRepositoryProvider)
            .fetchAndSave(user.token, uid: user.uid);
        return failureOrSuccess.fold((failure) => throw failure, (_) {});
      },
    );
