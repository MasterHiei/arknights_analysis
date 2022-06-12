import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../application/user/states/user_state.dart';
import '../../application/user/user_provider.dart';
import '../core/common/widgets/app_error_view.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../core/routing/route_params.dart';
import '../core/routing/router.dart';
import 'widgets/index.dart';

class PortalPage extends ConsumerStatefulWidget {
  const PortalPage(this.params, {Key? key}) : super(key: key);

  final PortalParams params;

  @override
  ConsumerState<PortalPage> createState() => _PortalPageState();
}

class _PortalPageState extends ConsumerState<PortalPage> {
  final _webviewController = WebviewController();

  AutoDisposeStateNotifierProvider<UserNotifier, UserState> get _userProvider =>
      userProvider(widget.params.token);

  @override
  void initState() {
    _webviewController.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _webviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _listenState(context, ref);

    return NavigationView(
      pane: _navigationPane,
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
        child: Column(children: [
          PortalHeader(widget.params.token),
          SizedBox(height: 48.h),
          Expanded(
            child: Consumer(
              builder: (_, ref, __) {
                final state = ref.watch(userProvider(widget.params.token));
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
          const PortalFooter(),
        ]),
      ),
    );
  }

  NavigationPane get _navigationPane => NavigationPane(
        footerItems: [
          PaneItemAction(
            icon: const Icon(FluentIcons.sign_out),
            onTap: () {
              if (!_webviewController.value.isInitialized) {
                return;
              }
              _webviewController
                  .clearCookies()
                  .then((_) => Routes.splash.go(context));
            },
            title: const Text('退出登录'),
          ),
        ],
        displayMode: PaneDisplayMode.compact,
      );

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
