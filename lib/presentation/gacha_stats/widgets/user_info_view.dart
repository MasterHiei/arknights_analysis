import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/user/user_provider.dart';

class UserInfoView extends ConsumerWidget {
  const UserInfoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(userProvider).fold(
          () => const SizedBox(),
          (user) => Column(
            children: [
              Text(
                user.nickName,
                style: TextStyle(fontSize: 20.sp),
              ),
              Text(
                'UID: ${user.uid.getOrCrash()}',
                style: TextStyle(color: Colors.grey[100], fontSize: 14.sp),
              ),
            ],
          ),
        );
  }
}
