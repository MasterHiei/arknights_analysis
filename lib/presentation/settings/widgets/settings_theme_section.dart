import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/common/widgets/app_flush_bar.dart';
import 'settings_section_item_view.dart';
import 'settings_section_view.dart';

class SettingsThemeSection extends StatelessWidget {
  const SettingsThemeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsSectionView(
      title: '外观',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDarkModeSwitch(context),
          _buildLanguageSelector(context),
        ],
      ),
    );
  }

  Widget _buildDarkModeSwitch(BuildContext context) => SettingsSectionItemView(
        title: '夜间模式',
        child: Consumer(
          builder: (_, ref, __) {
            return ToggleSwitch(
              checked: false,
              content: const Text('关'),
              style: const ToggleSwitchThemeData(margin: EdgeInsets.zero),
              onChanged: (_) {
                // TODO: waiting for implementation
                AppFlushBar.show(
                  context,
                  message: 'Comming soooon...',
                );
              },
            );
          },
        ),
      );

  Widget _buildLanguageSelector(BuildContext context) =>
      SettingsSectionItemView(
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
                    onPressed: null,
                  ),
                ],
                title: const Text('简体中文'),
              ),
            );
          },
        ),
      );
}
