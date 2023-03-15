import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/user/user_provider.dart';

class PaneHeaderView extends ConsumerWidget {
  const PaneHeaderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(userProvider).fold(
          () => const SizedBox.shrink(),
          (user) => Padding(
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
        );
  }
}
