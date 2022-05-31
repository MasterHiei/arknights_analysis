import 'package:another_flushbar/flushbar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/user/states/user_state.dart';
import '../../../application/user/user_provider.dart';
import '../../../domain/user/value_objects/token.dart';

class PortalHeader extends ConsumerWidget {
  const PortalHeader(this.token, {Key? key}) : super(key: key);

  final Token token;

  AutoDisposeStateNotifierProvider<UserNotifier, UserState> get _userProvider =>
      userProvider(token);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    return Row(
      children: [
        _buildUserInfoArea(),
        const Spacer(),
        _buildOperatorArea(ref),
      ],
    );
  }

  Widget _buildUserInfoArea() {
    return Consumer(
      builder: (_, ref, __) => ref.watch(_userProvider).userOption.fold(
            () => Container(),
            (user) => Column(
              children: [
                Text(
                  user.nickName,
                  style: TextStyle(fontSize: 20.sp),
                ),
                Text(
                  'UID: ${user.uid}',
                  style: TextStyle(color: Colors.grey[100], fontSize: 14.sp),
                ),
              ],
            ),
          ),
    );
  }

  Widget _buildOperatorArea(WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilledButton(
          child: const Text('更新数据'),
          onPressed: () {},
        ),
      ],
    );
  }

  void _listenState(BuildContext context, WidgetRef ref) {
    ref.listen<UserState>(_userProvider, (_, next) {
      next.failureOption.fold(
        () {},
        (failure) => Flushbar<void>(
          messageText: Text(
            failure.localizedMessage,
            style: TextStyle(fontSize: 16.sp),
          ),
          icon: Icon(
            FluentIcons.critical_error_solid,
            size: 24.w,
            color: Colors.errorPrimaryColor,
          ),
          shouldIconPulse: false,
          maxWidth: ScreenUtil().screenWidth * 0.3,
          margin: EdgeInsets.only(bottom: 24.h),
          borderRadius: BorderRadius.circular(2),
          backgroundColor: Colors.white,
          leftBarIndicatorColor: Colors.errorPrimaryColor,
          duration: const Duration(seconds: 3000),
          isDismissible: false,
        )..show(context),
      );
    });
  }
}
