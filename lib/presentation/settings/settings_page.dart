import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/constants/constants.dart';
import '../core/common/widgets/app_flush_bar.dart';
import '../core/routing/router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('设置', style: TextStyle(fontSize: 24.sp)),
          _buildThemeSection(context),
          _buildAboutSection(context),
        ],
      ),
    );
  }

  Widget _buildThemeSection(BuildContext context) => _SectionView(
        title: '外观',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionViewItem(
              title: '夜间模式',
              child: Consumer(
                builder: (_, ref, __) {
                  return ToggleSwitch(
                    checked: false,
                    content: const Text('关'),
                    style: const ToggleSwitchThemeData(margin: EdgeInsets.zero),
                    onChanged: (_) => AppFlushBar.show(
                      context,
                      message: 'Comming soooon...',
                    ),
                  );
                },
              ),
            ),
            _SectionViewItem(
              title: '显示语言',
              child: Consumer(
                builder: (_, ref, __) {
                  return SizedBox(
                    width: 160.w,
                    child: DropDownButton(
                      items: [
                        MenuFlyoutItem(
                          text: Text(
                            '简体中文',
                            style: DefaultTextStyle.of(context).style,
                          ),
                          onPressed: () {},
                        ),
                      ],
                      title: const Text('简体中文'),
                      buttonStyle: ButtonStyle(
                        padding: ButtonState.resolveWith(
                          (states) => EdgeInsets.symmetric(
                            vertical: 8.h,
                            horizontal: 12.w,
                          ),
                        ),
                      ),
                      placement: FlyoutPlacement.start,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );

  Widget _buildAboutSection(BuildContext context) => _SectionView(
        title: '关于',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SectionViewItem(
              title: '感谢您使用本软件',
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text:
                          '$appName 是一项非盈利的个人开源项目，专注于为各位博士提供方便快捷安全的游戏数据统计和查询服务。\n'
                          '由于尚处于开发阶段，在您的使用途中不可避免地会出现一些问题，请您及时向我们反馈以便给您带来更好的使用体验。\n',
                    ),
                    const TextSpan(text: '欢迎前往我们的'),
                    TextSpan(
                      text: ' GitHub ',
                      style: TextStyle(color: Colors.blue.normal),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => launchUrlString(projectUrl),
                    ),
                    const TextSpan(
                      text: '为我们点亮 Star、提交 Issues 以及 Pull Requests。',
                    ),
                  ],
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            const _SectionViewItem(
              title: '免责声明',
              child: Text(
                '本软件不会以任何方式获取和储存您的明日方舟游戏帐号（包括手机号、邮箱）和密码。\n'
                '您应该妥善保管您的帐号信息，不应在非明日方舟/鹰角网络网站输入游戏帐号、密码、验证码信息，'
                '不应通过非官方渠道下载本软件，否则可能导致您的帐号泄露及财产受损。\n'
                '上述因您帐号保管不当造成的损失将由您自行承担。',
              ),
            ),
            _SectionViewItem(
              title: '内容声明',
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
                        ..onTap = () => launchUrlString(licenseUrl),
                    ),
                    const TextSpan(text: '开源许可协议。'),
                  ],
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            _SectionViewItem(
              title: '鸣谢',
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: '游戏数据：'),
                    TextSpan(
                      text: ' Kengxxiao/ArknightsGameData ',
                      style: TextStyle(color: Colors.blue.normal),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => launchUrlString(gameDataResourceUrl),
                    ),
                  ],
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
            FilledButton(
              onPressed: () => Routes.license.push(context),
              style: ButtonStyle(
                padding: ButtonState.resolveWith(
                  (states) => EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 12.w,
                  ),
                ),
              ),
              child: const Text('查看开源许可列表'),
            ),
          ],
        ),
      );
}

class _SectionView extends StatelessWidget {
  const _SectionView({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 20.sp)),
          SizedBox(height: 16.h),
          child,
        ],
      ),
    );
  }
}

class _SectionViewItem extends StatelessWidget {
  const _SectionViewItem({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 15.sp)),
          SizedBox(height: 8.h),
          child,
        ],
      ),
    );
  }
}
