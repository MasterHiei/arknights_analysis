import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/user/states/user_state.dart';
import '../../application/user/user_provider.dart';
import '../core/common/widgets/app_error_view.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../core/routing/route_params.dart';
import 'widgets/index.dart';

class PortalPage extends ConsumerWidget {
  const PortalPage(this.params, {Key? key}) : super(key: key);

  final PortalParams params;

  AutoDisposeStateNotifierProvider<UserNotifier, UserState> get _userProvider =>
      userProvider(params.token);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    return NavigationView(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(children: [
          PortalHeader(params.token),
          SizedBox(height: 48.h),
          Expanded(
            child: Consumer(
              builder: (_, ref, __) {
                final state = ref.watch(userProvider(params.token));
                if (state.isRefreshing) {
                  return _progressBar;
                }
                if (state.hasFailure) {
                  return const AppErrorView();
                }
                return state.userOption.fold(
                  () => _progressBar,
                  (user) => PortalGachaStatsView(user),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }

  Widget get _progressBar =>
      const SizedBox.expand(child: Center(child: ProgressBar()));

  void _listenState(BuildContext context, WidgetRef ref) {
    ref.listen<UserState>(
      _userProvider,
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
