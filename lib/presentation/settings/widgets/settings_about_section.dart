import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../application/settings/check_for_updates_provider.dart';
import '../../../application/settings/download_new_version_provider.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routing/routes.dart';
import '../../../generated/locale_keys.g.dart';
import 'settings_action_button.dart';
import 'settings_section_item_view.dart';
import 'settings_section_view.dart';

final _currentVersion = Provider.autoDispose(
  (ref) => ref.watch(
    checkForUpdatesProvider.select((state) => state.currentVersion),
  ),
);

final _latestVersion = Provider.autoDispose((ref) {
  final latestReleaseOption = ref.watch(
    checkForUpdatesProvider.select((state) => state.latestReleaseOption),
  );
  return latestReleaseOption.match(
    () => '',
    (latest) => latest.version,
  );
});

final _isDownloadingUpdates = Provider.autoDispose(
  (ref) => ref.watch(
    downloadNewVersionProvider.select((state) => state.isDownloading),
  ),
);

final _isCheckingOrDownloading = Provider.autoDispose((ref) {
  final isChecking = ref.watch(
    checkForUpdatesProvider.select((state) => state.isChecking),
  );
  final isDownloading = ref.watch(_isDownloadingUpdates);
  return isChecking || isDownloading;
});

final _downloadProgress = Provider.autoDispose(
  (ref) => ref.watch(
    downloadNewVersionProvider.select((state) => state.downloadProgress),
  ),
);

class SettingsAboutSection extends StatelessWidget {
  const SettingsAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsSectionView(
      title: LocaleKeys.settings_about_title.tr(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsSectionItemView(
            title: LocaleKeys.settings_about_information.tr(),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text:
                        '${Constants.appName} 是一项非盈利的个人开源项目，专注于为各位博士提供方便快捷安全的游戏数据统计和查询服务。\n'
                        '由于尚处于开发阶段，在您的使用过程中不可避免地会出现一些问题，请您及时向我们反馈以便给您带来更好的使用体验。\n',
                  ),
                  const TextSpan(text: '欢迎前往我们的'),
                  TextSpan(
                    text: ' GitHub ',
                    style: TextStyle(color: Colors.blue.normal),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launchUrlString(Constants.projectUrl),
                  ),
                  const TextSpan(
                    text: '为我们点亮 Star、提交 Issues 以及 Pull Requests。',
                  ),
                ],
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),
          SettingsSectionItemView(
            title: LocaleKeys.settings_about_disclaimer.tr(),
            child: const Text(
              '本软件不会以任何方式获取和储存您的明日方舟游戏帐号（包括手机号、邮箱）和密码。\n'
              '您应该妥善保管您的帐号信息，不应在非明日方舟/鹰角网络网站输入游戏帐号、密码、验证码信息，'
              '不应通过非官方渠道下载本软件，否则可能导致您的帐号泄露及财产受损。\n'
              '上述因您帐号保管不当造成的损失将由您自行承担。',
            ),
          ),
          SettingsSectionItemView(
            title: LocaleKeys.settings_about_copyrightNotice.tr(),
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '本软件内所使用的图片、动画、音频、文本原文等鹰角网络游戏内容，'
                        '其相关版权均属于鹰角网络游戏软件和/或鹰角网络游戏服务的提供方，'
                        '即上海鹰角网络科技有限公司及其关联公司所有。\n',
                  ),
                  const TextSpan(
                    text: '部分来源于网络的内容，其版权归原作者及网站所有，'
                        '如认为内容侵权，请立即联系我们删除。\n',
                  ),
                  const TextSpan(text: '除非另有声明，本软件其他内容遵守'),
                  TextSpan(
                    text: ' BSD 3-Clause "New" or "Revised" License ',
                    style: TextStyle(color: Colors.blue.normal),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launchUrlString(Constants.licenseUrl),
                  ),
                  const TextSpan(text: '开源许可协议。'),
                ],
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),
          SettingsSectionItemView(
            title: LocaleKeys.settings_about_version_title.tr(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(LocaleKeys.settings_about_version_current).tr(),
                    SizedBox(width: 8.w),
                    Consumer(
                      builder: (_, ref, __) => Text(
                        ref.watch(_currentVersion),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(LocaleKeys.settings_about_version_latest).tr(),
                    SizedBox(width: 8.w),
                    Consumer(
                      builder: (_, ref, __) => Text(
                        ref.watch(_latestVersion),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Consumer(
                  builder: (_, ref, __) => SettingsActionButton(
                    onPressed: ref.watch(_isCheckingOrDownloading)
                        ? null
                        : () => ref
                            .read(checkForUpdatesProvider.notifier)
                            .checkForUpdates(isManually: true),
                    child: Text(
                      ref.watch(_isDownloadingUpdates)
                          ? ref.watch(_downloadProgress)
                          : LocaleKeys.app_update_check.tr(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SettingsSectionItemView(
            title: LocaleKeys.settings_about_acknowledgement_title.tr(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: LocaleKeys.settings_about_acknowledgement_gameData
                            .tr(),
                      ),
                      TextSpan(
                        text: ' Kengxxiao/ArknightsGameData ',
                        style: TextStyle(color: Colors.blue.normal),
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => launchUrlString(Constants.gameDataRepoUrl),
                      ),
                    ],
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
                SizedBox(height: 8.h),
                SettingsActionButton(
                  onPressed: () => const LicenseRoute().push<void>(context),
                  child: const Text(
                    LocaleKeys.settings_about_acknowledgement_licenses,
                  ).tr(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
