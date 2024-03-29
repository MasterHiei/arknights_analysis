import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';
import '../providers/gacha_stats_filter_provider.dart';

final _selectablePools = Provider.autoDispose((ref) {
  final sources = ref.watch(
    gachaStatsFilterProvider.select((state) => state.processedSource),
  );
  return [null, ...sources];
});

final _selectedPool = Provider.autoDispose(
  (ref) => ref.watch(
    gachaStatsFilterProvider.select((state) => state.value),
  ),
);

class GachaStatsFilter extends ConsumerWidget {
  const GachaStatsFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref
        .watch(_selectablePools)
        .map(
          (pool) => MenuFlyoutItem(
            text: Text(
              pool ?? LocaleKeys.gacha_type_all.tr(),
              style: DefaultTextStyle.of(context).style,
            ),
            onPressed: () =>
                ref.read(gachaStatsFilterProvider.notifier).select(pool),
          ),
        )
        .toList();
    return DropDownButton(
      items: items,
      title: Text(
        ref.watch(_selectedPool) ?? LocaleKeys.gacha_type_all.tr(),
        style: TextStyle(fontSize: 16.sp),
      ),
    );
  }
}
