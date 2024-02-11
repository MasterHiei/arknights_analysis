import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/enums/rarity.dart';
import '../../../../generated/locale_keys.g.dart';
import '../providers/gacha_history_filter_provider.dart';

final _isRaritySelected = Provider.autoDispose.family(
  (ref, Rarity rarity) => ref.watch(
    gachaHistoryFilterProvider.select(
      (state) => state.selectedRarities.contains(rarity),
    ),
  ),
);

final _showAllPools = Provider.autoDispose(
  (ref) => ref.watch(
    gachaHistoryFilterProvider.select((state) => state.showAllPools),
  ),
);

final _pools = Provider.autoDispose(
  (ref) => ref.watch(
    gachaHistoryFilterProvider.select((state) => state.pools),
  ),
);

final _selectedPools = Provider.autoDispose(
  (ref) => ref.watch(
    gachaHistoryFilterProvider.select((state) => state.selectedPools),
  ),
);

class GachaHistoryFilter extends StatefulWidget {
  const GachaHistoryFilter({super.key});

  @override
  _GachaHistoryFilterState createState() => _GachaHistoryFilterState();
}

class _GachaHistoryFilterState extends State<GachaHistoryFilter> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.features_gachaHistory_title,
            style: TextStyle(fontSize: 24.sp),
          ).tr(),
          SizedBox(height: 24.h),
          Expander(
            header: Row(
              children: [
                Icon(
                  FluentIcons.filter_solid,
                  size: 16.w,
                  color: Colors.grey[140],
                ),
                SizedBox(width: 8.w),
                Text(
                  LocaleKeys.features_gachaHistory_filter_title,
                  style: TextStyle(fontSize: 15.sp),
                ).tr(),
              ],
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FilterItem(
                  label:
                      LocaleKeys.features_gachaHistory_filter_labels_gacha.tr(),
                  child: _poolFilter,
                ),
                SizedBox(height: 12.h),
                _FilterItem(
                  label: LocaleKeys.features_gachaHistory_filter_labels_rarity
                      .tr(),
                  child: _rarityFilter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _poolFilter {
    final showAllSwitch = Consumer(
      builder: (_, ref, __) => ToggleSwitch(
        checked: ref.watch(_showAllPools),
        onChanged: (value) => ref
            .read(gachaHistoryFilterProvider.notifier)
            .toggleShowAll(value: value),
        content: Text(
          LocaleKeys.gacha_type_all,
          style: TextStyle(fontSize: 15.sp),
        ).tr(),
      ),
    );

    final poolSelector = Consumer(
      builder: (_, ref, __) {
        if (ref.watch(_showAllPools)) {
          return const SizedBox.shrink();
        }

        final selectedPools = ref.watch(_selectedPools);
        final selectablePools =
            ref.watch(_pools).whereNot(selectedPools.contains);
        final items = selectablePools
            .map(
              (pool) => MenuFlyoutItem(
                text: Text(pool),
                onPressed: () =>
                    ref.read(gachaHistoryFilterProvider.notifier).select(pool),
              ),
            )
            .toList();
        final isCompleted = selectablePools.isEmpty;
        if (isCompleted) {
          items.add(
            MenuFlyoutItem(text: const SizedBox.shrink(), onPressed: null),
          );
        }
        return DropDownButton(
          items: items,
          title: Text(
            isCompleted
                ? LocaleKeys.features_gachaHistory_filter_labels_noRemaining
                : LocaleKeys.features_gachaHistory_filter_labels_selectable,
            style: TextStyle(fontSize: 15.sp),
          ).tr(),
          disabled: selectablePools.isEmpty,
        );
      },
    );

    final selectedChips = Consumer(
      builder: (_, ref, __) {
        if (ref.watch(_showAllPools)) {
          return const SizedBox.shrink();
        }

        final children = ref.watch(_selectedPools).map(
              (pool) => Button(
                child: Tooltip(
                  message: '点击以取消选择',
                  useMousePosition: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      children: [
                        const Icon(FontAwesomeIcons.check, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          pool,
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ],
                    ),
                  ),
                ),
                onPressed: () => ref
                    .read(gachaHistoryFilterProvider.notifier)
                    .unselect(pool),
              ),
            );

        return Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Wrap(spacing: 16.w, children: children.toList()),
          ),
        );
      },
    );

    return Row(
      children: [
        showAllSwitch,
        SizedBox(width: 32.w),
        poolSelector,
        SizedBox(width: 24.w),
        Expanded(child: selectedChips),
      ],
    );
  }

  Widget get _rarityFilter {
    final conditions = Rarity.poolExclusive.map(
      (rarity) => Consumer(
        builder: (_, ref, __) {
          return Checkbox(
            checked: ref.watch(_isRaritySelected(rarity)),
            onChanged: (checked) => ref
                .read(gachaHistoryFilterProvider.notifier)
                .onRarityChanged(rarity, checked: checked),
            content: Text(
              rarity.label,
              style: TextStyle(fontSize: 15.sp),
            ),
          );
        },
      ),
    );
    return Wrap(spacing: 8.w, children: conditions.toList());
  }
}

class _FilterItem extends StatelessWidget {
  const _FilterItem({
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      constraints: BoxConstraints(minHeight: 40.h),
      child: Row(
        children: [
          Text(label, style: TextStyle(fontSize: 14.sp)),
          Container(
            width: 1,
            height: 24.h,
            color: Colors.grey[60],
            margin: EdgeInsets.symmetric(horizontal: 12.w),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
