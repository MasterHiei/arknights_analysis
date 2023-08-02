import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/enums/i18n.dart';
import '../../../generated/locale_keys.g.dart';
import '../../core/common/widgets/app_flush_bar.dart';
import 'settings_section_item_view.dart';
import 'settings_section_view.dart';

class SettingsThemeSection extends StatelessWidget {
  const SettingsThemeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsSectionView(
      title: LocaleKeys.settings_theme_title.tr(),
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
        title: LocaleKeys.settings_theme_darkMode_title.tr(),
        child: Consumer(
          builder: (_, ref, __) {
            return ToggleSwitch(
              checked: false,
              content: const Text(LocaleKeys.settings_theme_darkMode_off).tr(),
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
        title: LocaleKeys.settings_theme_language.tr(),
        child: Consumer(
          builder: (_, ref, __) {
            final items = I18n.values.map(
              (i18n) => MenuFlyoutItem(
                text: Text(
                  i18n.name,
                  style: DefaultTextStyle.of(context).style,
                ),
                onPressed: () => i18n.enable(context),
              ),
            );
            return SizedBox(
              width: 160.w,
              child: DropDownButton(
                items: items.toList(),
                title: const Text(LocaleKeys.language).tr(),
              ),
            );
          },
        ),
      );
}
