import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/ak_logout/ak_logout_provider.dart';
import '../../application/ak_logout/states/ak_logout_state.dart';
import '../../application/diamonds/diamond_provider.dart';
import '../../application/diamonds/states/diamond_state.dart';
import '../../application/gacha/gacha_pool_selector_provider.dart';
import '../../application/gacha/gacha_provider.dart';
import '../../application/gacha/states/gacha_state.dart';
import '../../application/portal/pane_provider.dart';
import '../../application/settings/check_for_updates_provider.dart';
import '../../application/settings/download_new_version_provider.dart';
import '../../application/user/user_fetch_provider.dart';
import '../../core/exceptions/app_failure.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../core/routing/router.dart';
import '../diamond_history/diamond_history_page.dart';
import '../gacha_history/gacha_history_page.dart';
import '../gacha_stats/gacha_stats_page.dart';
import '../settings/settings_page.dart';
import 'widgets/index.dart';

final _selectedPaneIndex = Provider.autoDispose(
  (ref) => ref.watch(paneProvider).selectedIndex,
);

final _hasNewVersion = Provider.autoDispose(
  (ref) => ref.watch(checkForUpdatesProvider).hasNewVersion,
);

final _browserDownloadUrl = Provider.autoDispose((ref) {
  final state = ref.watch(checkForUpdatesProvider);
  return state.latestReleaseOption.fold(
    () => '',
    (latest) => latest.browserDownloadUrl,
  );
});

final _assetName = Provider.autoDispose((ref) {
  final state = ref.watch(checkForUpdatesProvider);
  return state.latestReleaseOption.fold(
    () => '',
    (latest) => latest.assetName,
  );
});

class PortalPage extends ConsumerStatefulWidget {
  const PortalPage({super.key});

  @override
  ConsumerState<PortalPage> createState() => _PortalPageState();
}

class _PortalPageState extends ConsumerState<PortalPage> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Future<void> onWindowClose() => AppDialog.closeWindow(
        context,
        windowManager: windowManager,
      );

  @override
  Widget build(BuildContext context) {
    _listenUserState();
    _listenGachaStates();
    _listenDiamondState();
    _listenVersionState();
    _listenDownloadState();
    _listenLogoutState();

    return NavigationView(
      pane: NavigationPane(
        selected: ref.watch(_selectedPaneIndex),
        onChanged: ref.read(paneProvider.notifier).select,
        header: const PaneHeaderView(),
        items: [
          PaneItem(
            icon: const Icon(FontAwesomeIcons.chartLine),
            body: const GachaStatsPage(),
            title: const Text('寻访统计'),
          ),
          PaneItem(
            icon: const Icon(FontAwesomeIcons.listUl),
            body: const GachaHistoryPage(),
            title: const Text('寻访记录'),
          ),
          PaneItem(
            icon: const Icon(FontAwesomeIcons.gem),
            body: const DiamondHistoryPage(),
            title: const Text('源石记录'),
          ),
        ],
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            body: const SettingsPage(),
            title: const Text('设置'),
            infoBadge: Consumer(
              builder: (_, ref, __) {
                if (ref.watch(_hasNewVersion)) {
                  return InfoBadge(color: Colors.red.normal);
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          PaneItemSeparator(),
          PaneItemAction(
            icon: const Icon(FluentIcons.sign_out),
            onTap: () => AppDialog.show(
              context,
              title: const Text('确认'),
              content: const Text('确定退出登录吗？'),
              confirmButtonText: '退出',
              confirmButtonColor: Colors.red,
              onConfirmButtonTap: ref.read(akLogoutProvider.notifier).logout,
              closeButtonText: '取消',
              closeButtonColor: Colors.blue,
            ),
            title: const Text('退出登录'),
          ),
        ],
        displayMode: PaneDisplayMode.compact,
      ),
      transitionBuilder: (child, animation) => DrillInPageTransition(
        animation: animation,
        child: child,
      ),
    );
  }

  void _listenUserState() => ref.listen<AsyncValue<void>>(
        userFetchProvider,
        (_, next) => next.maybeWhen(
          error: (failure, _) async {
            if (failure is AppFailure) {
              await AppFlushBar.show(
                context,
                message: failure.localizedMessage,
                severity: FlushBarSeverity.error,
              );
              failure.maybeWhen(
                invalidToken: () =>
                    ref.read(akLogoutProvider.notifier).logout(),
                orElse: () {},
              );
            }
          },
          orElse: () {},
        ),
      );

  void _listenGachaStates() {
    ref.listen(gachaPoolSelectorProvider, (_, __) {});
    ref.listen<GachaState>(
      gachaProvider,
      (_, next) => next.maybeWhen<void>(
        success: () => AppFlushBar.show(
          context,
          message: '数据已更新。',
          severity: FlushBarSeverity.success,
        ),
        failure: (failure) => AppFlushBar.show(
          context,
          message: failure.localizedMessage,
          severity: FlushBarSeverity.error,
        ),
        orElse: () {},
      ),
    );
  }

  void _listenDiamondState() => ref.listen<DiamondState>(
        diamondProvider,
        (_, next) => next.maybeWhen<void>(
          failure: (failure) => AppFlushBar.show(
            context,
            message: failure.localizedMessage,
            severity: FlushBarSeverity.error,
          ),
          orElse: () {},
        ),
      );

  void _listenVersionState() => ref.listen(
        checkForUpdatesProvider,
        (_, next) {
          if (next.isChecking) {
            return;
          }

          next.failureOption.fold(
            () {},
            (failure) => AppFlushBar.show(
              context,
              message: failure.localizedMessage,
            ),
          );

          if (next.failureOption.isNone() && next.hasNewVersion) {
            AppDialog.promptForUpdate(
              context,
              browserDownloadUrl: ref.read(_browserDownloadUrl),
              onDownloadButtonTap: () {
                router.pop();
                ref.read(downloadNewVersionProvider.notifier).download(
                      ref.read(_browserDownloadUrl),
                      fileName: ref.read(_assetName),
                    );
              },
            );
          }
        },
      );

  void _listenDownloadState() => ref.listen(
        downloadNewVersionProvider,
        (_, next) => next.maybeWhen<void>(
          beginDownload: () => AppFlushBar.show(
            context,
            message: '开始下载新版本。',
          ),
          success: (file) {
            launchUrl(file.absolute.parent.uri);
            AppFlushBar.show(
              context,
              message: '新版本下载完成。',
              severity: FlushBarSeverity.success,
            );
          },
          failure: (failure) => AppFlushBar.show(
            context,
            message: failure.localizedMessage,
          ),
          orElse: () {},
        ),
      );

  void _listenLogoutState() => ref.listen<AkLogoutState>(
        akLogoutProvider,
        (_, next) => next.maybeWhen<void>(
          loggedOut: () => ref.read(akLogoutProvider.notifier).go(context),
          orElse: () {},
        ),
      );
}
