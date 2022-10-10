import 'package:collection/collection.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gacha/gacha_history_filter_provider.dart';
import '../../../core/enums/rarity.dart';

final _isRaritySelected = Provider.autoDispose.family((ref, Rarity rarity) {
  final provider = ref.watch(gachaHistoryFilterProvider);
  return provider.selectedRarities.contains(rarity);
});

final _showAllPools = Provider.autoDispose((ref) {
  final provider = ref.watch(gachaHistoryFilterProvider);
  return provider.showAllPools;
});

final _pools = Provider.autoDispose((ref) {
  final provider = ref.watch(gachaHistoryFilterProvider);
  return provider.pools;
});

final _selectedPools = Provider.autoDispose((ref) {
  final provider = ref.watch(gachaHistoryFilterProvider);
  return provider.selectedPools;
});

class GachaHistoryFilter extends StatefulWidget {
  const GachaHistoryFilter({super.key});

  @override
  State<GachaHistoryFilter> createState() => _GachaHistoryFilterState();
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
          Text('寻访记录', style: TextStyle(fontSize: 24.sp)),
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
                Text('数据过滤', style: TextStyle(fontSize: 15.sp)),
              ],
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FilterItem(label: '寻访名', child: _poolFilter),
                SizedBox(height: 12.h),
                _FilterItem(label: '稀有度', child: _rarityFilter),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _poolFilter {
    final showAllSwitch = Consumer(
      builder: (_, ref, __) {
        final checked = ref.watch(_showAllPools);
        return ToggleSwitch(
          checked: checked,
          onChanged: (value) => ref
              .read(gachaHistoryFilterProvider.notifier)
              .switchShowAllPools(value: value),
          content: Text(
            checked ? '全部寻访' : '部分寻访',
            style: TextStyle(fontSize: 15.sp),
          ),
        );
      },
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
                onPressed: () => ref
                    .read(gachaHistoryFilterProvider.notifier)
                    .selectPool(pool),
              ),
            )
            .toList();
        final isCompleted = selectablePools.isEmpty;
        if (isCompleted) {
          items.add(
            MenuFlyoutItem(text: const SizedBox.shrink(), onPressed: () {}),
          );
        }
        return DropDownButton(
          items: items,
          title: Text(
            isCompleted ? '无剩余寻访' : '可选择寻访',
            style: TextStyle(fontSize: 15.sp),
          ),
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
              (pool) => Chip(
                text: Tooltip(
                  message: '移除该寻访',
                  useMousePosition: false,
                  child: Row(
                    children: [
                      const Icon(FluentIcons.check_mark, size: 14),
                      const SizedBox(width: 2),
                      Text(pool),
                    ],
                  ),
                ),
                onPressed: () => ref
                    .read(gachaHistoryFilterProvider.notifier)
                    .unselectPool(pool),
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
              rarity.title,
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
