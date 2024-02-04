import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../presentation/core/common/widgets/app_alert.dart';
import '../../../auth/presentation/providers/get_current_user_provider.dart';

class NavigationPaneHeader extends ConsumerWidget {
  const NavigationPaneHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    return ref.watch(getCurrentUserProvider).maybeWhen(
          data: (user) => Padding(
            padding: EdgeInsets.fromLTRB(12.w, 8.h, 0, 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.nickName,
                  style: TextStyle(fontSize: 16.sp),
                ),
                Text(
                  'UID: ${user.uid.getOrCrash()}',
                  style: TextStyle(color: Colors.grey[100], fontSize: 12.sp),
                ),
              ],
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
  }

  void _listenState(BuildContext context, WidgetRef ref) => ref.listen(
        getCurrentUserProvider,
        (_, next) => next.maybeWhen(
          error: (e, _) {
            final failure = switch (e) {
              final AppFailure failure => failure,
              _ => AppFailure.unexpectedError(e),
            };
            AppAlert.show(
              context,
              content: Text(failure.localizedMessage),
            );
          },
          orElse: () {},
        ),
      );
}
