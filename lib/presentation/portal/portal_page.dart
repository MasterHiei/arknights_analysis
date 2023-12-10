import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:window_manager/window_manager.dart';

import '../../application/ak_logout/ak_logout_provider.dart';
import '../../application/diamonds/fetch_diamonds_provider.dart';
import '../../application/gacha/fetch_gacha_provider.dart';
import '../../application/gacha/gacha_pool_selector_provider.dart';
import '../../application/gifts/fetch_exchange_logs_provider.dart';
import '../../application/payments/fetch_payments_provider.dart';
import '../../application/portal/portal_pane_provider.dart';
import '../../application/settings/check_for_updates_provider.dart';
import '../../application/settings/download_new_version_provider.dart';
import '../../application/user/fetch_user_provider.dart';
import '../../application/user/logged_in_user_info_provider.dart';
import '../../core/exceptions/app_failure.dart';
import '../../generated/locale_keys.g.dart';
import '../core/common/widgets/app_dialog.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../core/routing/router.dart';
import '../core/routing/routes.dart';
import '../diamond_history/diamond_history_page.dart';
import '../exchange_history/exchange_history_page.dart';
import '../gacha_history/gacha_history_page.dart';
import '../gacha_stats/gacha_stats_page.dart';
import '../payment_history/payment_history_page.dart';
import '../settings/settings_page.dart';
import 'widgets/index.dart';

final _hasNewVersion = Provider.autoDispose(
  (ref) => ref.watch(
    checkForUpdatesProvider.select((state) => state.hasNewVersion),
  ),
);

final _browserDownloadUrl = Provider.autoDispose((ref) {
  final latestReleaseOption = ref.watch(
    checkForUpdatesProvider.select((state) => state.latestReleaseOption),
  );
  return latestReleaseOption.match(
    () => '',
    (latest) => latest.browserDownloadUrl,
  );
});

final _assetName = Provider.autoDispose((ref) {
  final latestReleaseOption = ref.watch(
    checkForUpdatesProvider.select((state) => state.latestReleaseOption),
  );
  return latestReleaseOption.match(
    () => '',
    (latest) => latest.assetName,
  );
});

final _isOfficialUser = Provider.autoDispose(
  (ref) => ref.watch(loginTypeProvider.select((state) => state.isOfficial)),
);

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
    _listenFetchUserState();
    _listenGachaStates();
    if (ref.watch(_isOfficialUser)) {
      _listenPaymentsState();
    }
    _listenDiamondsState();
    _listenGiftsState();
    _listenVersionState();
    _listenDownloadState();
    _listenLogoutState();

    return NavigationView(
      pane: NavigationPane(
        selected: ref.watch(portalPaneProvider),
        onChanged: ref.read(portalPaneProvider.notifier).select,
        header: const PaneHeaderView(),
        items: [
          PaneItem(
            icon: const Icon(FontAwesomeIcons.chartLine),
            body: const GachaStatsPage(),
            title: const Text(LocaleKeys.features_gachaStats_title).tr(),
          ),
          PaneItem(
            icon: const Icon(FontAwesomeIcons.listUl),
            body: const GachaHistoryPage(),
            title: const Text(LocaleKeys.features_gachaHistory_title).tr(),
          ),
          if (ref.watch(_isOfficialUser))
            PaneItem(
              icon: const Icon(FontAwesomeIcons.moneyCheck),
              body: const PaymentHistoryPage(),
              title: const Text(LocaleKeys.features_paymentHistory_title).tr(),
            ),
          PaneItem(
            icon: const Icon(FontAwesomeIcons.gem),
            body: const DiamondHistoryPage(),
            title: const Text(LocaleKeys.features_diamondHistory_title).tr(),
          ),
          PaneItem(
            icon: const Icon(FontAwesomeIcons.gift),
            body: const ExchangeHistoryPage(),
            title: const Text(LocaleKeys.features_exchangeHistory_title).tr(),
          ),
        ],
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            body: const SettingsPage(),
            title: const Text(LocaleKeys.settings_title).tr(),
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
            onTap: () => AppDialog.logout(context, ref),
            title: const Text(LocaleKeys.app_logout_title).tr(),
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

  void _listenFetchUserState() => ref.listen(
        fetchUserProvider,
        (_, next) => next.maybeWhen(
          error: (failure, _) async {
            if (failure is AppFailure) {
              await AppFlushBar.show(
                context,
                message: failure.localizedMessage,
                severity: FlushBarSeverity.error,
              );
              failure.maybeWhen(
                invalidToken: ref.read(akLogoutProvider.notifier).logout,
                orElse: () {},
              );
            }
          },
          orElse: () {},
        ),
      );

  void _listenGachaStates() {
    ref.listen(gachaPoolSelectorProvider, (_, __) {});
    ref.listen(
      fetchGachaProvider,
      (_, next) => next.maybeWhen<void>(
        success: () => AppFlushBar.show(
          context,
          message: LocaleKeys.features_gachaStats_updated.tr(),
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

  void _listenPaymentsState() => ref.listen(
        fetchPaymentsProvider,
        (_, next) => next.maybeWhen<void>(
          error: (failure, _) async {
            if (failure is AppFailure) {
              await AppFlushBar.show(
                context,
                message: failure.localizedMessage,
                severity: FlushBarSeverity.error,
              );
            }
          },
          orElse: () {},
        ),
      );

  void _listenDiamondsState() => ref.listen(
        fetchDiamondsProvider,
        (_, next) => next.maybeWhen<void>(
          failure: (failure) => AppFlushBar.show(
            context,
            message: failure.localizedMessage,
            severity: FlushBarSeverity.error,
          ),
          orElse: () {},
        ),
      );

  void _listenGiftsState() => ref.listen(
        fetchExchangeLogsProvider,
        (_, next) => next.maybeWhen<void>(
          error: (failure, _) async {
            if (failure is AppFailure) {
              await AppFlushBar.show(
                context,
                message: failure.localizedMessage,
                severity: FlushBarSeverity.error,
              );
            }
          },
          orElse: () {},
        ),
      );

  void _listenVersionState() => ref.listen(
        checkForUpdatesProvider,
        (_, next) {
          if (next.isChecking) {
            return;
          }

          next.failureOption.match(
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
          preparing: () => AppFlushBar.show(
            context,
            message: LocaleKeys.app_update_begin.tr(),
          ),
          success: (file) {
            launchUrl(file.absolute.parent.uri);
            AppFlushBar.show(
              context,
              message: LocaleKeys.app_update_done.tr(),
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

  void _listenLogoutState() => ref.listen(
        akLogoutProvider,
        (_, next) => next.maybeWhen<void>(
          loggedOut: () => const SplashRoute().go(context),
          orElse: () {},
        ),
      );
}
