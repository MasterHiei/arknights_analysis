import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/user/states/user_state.dart';
import '../../../application/user/user_provider.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../core/common/widgets/app_flush_bar.dart';

final _userOptionProvider = Provider.autoDispose.family(
  (ref, Token token) => ref.watch(userProvider(token)).userOption,
);

class UserInfoView extends ConsumerWidget {
  const UserInfoView(this.token, {Key? key}) : super(key: key);

  final Token token;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    final userOption = ref.watch(_userOptionProvider(token));
    return userOption.fold(
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

  void _listenState(BuildContext context, WidgetRef ref) {
    ref.listen<UserState>(
      userProvider(token),
      (_, next) => next.failureOption.fold(
        () {},
        (failure) => AppFlushBar.show(
          context,
          message: failure.localizedMessage,
          severity: FlushBarSeverity.error,
        ),
      ),
    );
  }
}
