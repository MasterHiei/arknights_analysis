import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gacha/gacha_pool_filter_provider.dart';
import '../../../application/gacha/gacha_pool_selector_provider.dart';
import '../../../application/gacha/gacha_provider.dart';
import '../../../application/gacha/gacha_stats_provider.dart';
import '../../../core/enums/rarity.dart';
import '../../../domain/gacha/gacha_stats.dart';
import '../../core/common/widgets/app_error_view.dart';

final _filteredPools = Provider.autoDispose((ref) {
  final selectedPool = ref.watch(gachaPoolSelectorProvider).selectedPool;
  if (selectedPool == null) {
    return ref.watch(gachaPoolSelectorProvider).pools;
  }
  return [selectedPool];
});

class GachaStatsView extends ConsumerWidget {
  const GachaStatsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(gachaProvider).map(
          fetching: (state) {
            late final double? value;
            final total = state.total ?? 0;
            if (total == 0) {
              value = 100;
            } else {
              value = (state.current / state.total!) * 100;
            }
            return _buildProgressBar(
              value: value,
              label: '正在获取第${state.current}页数据',
            );
          },
          failure: (_) => const AppErrorView(),
          success: (_) => _contentView,
        );
  }

  Widget get _contentView => Consumer(
        builder: (_, ref, __) => ref.watch(gachaStatsProvider(null)).when(
              data: (_) => const _StatsView(),
              error: (_, __) => const AppErrorView(),
              loading: () => const SizedBox.shrink(),
            ),
      );

  Widget _buildProgressBar({
    double? value,
    String label = '',
  }) =>
      SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProgressBar(value: value),
            SizedBox(height: 12.h),
            Text(label, style: TextStyle(color: Colors.grey[100])),
          ],
        ),
      );
}

class _StatsView extends ConsumerWidget {
  const _StatsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pools = ref.watch(_filteredPools);
    return ListView.separated(
      itemBuilder: (_, index) {
        final pool = pools[index];
        return ref.watch(gachaStatsProvider(pool)).maybeWhen(
              data: (stats) {
                return Card(
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      color: Colors.grey[120],
                      fontSize: 14.sp,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: _buildOverview(pool, stats)),
                        Expanded(child: _buildProbability(stats)),
                        Expanded(flex: 6, child: _buildChars(stats)),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
      },
      separatorBuilder: (_, __) => SizedBox(height: 12.h),
      itemCount: pools.length,
    );
  }

  Widget _buildOverview(String poolName, GachaStats stats) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer(
            builder: (_, ref, __) =>
                ref.watch(gachaPoolFilterProvider(poolName)).maybeWhen(
                      data: (pool) => Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            pool?.name ?? poolName,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          if (pool != null)
                            Padding(
                              padding: EdgeInsets.only(left: 2.w),
                              child: Text(
                                '※${pool.ruleType.label}',
                                style: TextStyle(
                                  color: Colors.purple.lightest,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                        ],
                      ),
                      orElse: () => Text(
                        poolName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
          ),
          SizedBox(height: 2.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              const Text('总计'),
              SizedBox(width: 4.sp),
              Text(
                '${stats.chars.length}',
                style: TextStyle(
                  color: Colors.yellow.darkest,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          ...Rarity.rares.map(
            (rarity) => Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: rarity.label,
                    style: TextStyle(color: rarity.color),
                  ),
                  const TextSpan(text: ' 已累计'),
                  TextSpan(
                    text: ' ${stats.sinceLastPull(rarity)} ',
                    style: TextStyle(color: Colors.green.lighter),
                  ),
                  const TextSpan(text: '抽未出'),
                ],
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Text(stats.startDateTime ?? '-'),
          Text(stats.endDateTime ?? '-'),
        ],
      );

  Widget _buildProbability(GachaStats stats) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('概率'),
          SizedBox(height: 6.h),
          ...Rarity.rares.map(
            (rarity) {
              final total = stats.filter(rarity).length;
              return DefaultTextStyle.merge(
                style: TextStyle(color: rarity.color),
                child: Row(
                  children: [
                    Text('${rarity.label}：'),
                    SizedBox(
                      width: 48.w,
                      child: Text('$total'),
                    ),
                    Text(
                      '[${stats.caclPullRate(rarity)}]',
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 6.h),
          ...Rarity.rares.map(
            (rarity) => Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: rarity.label,
                    style: TextStyle(color: rarity.color),
                  ),
                  const TextSpan(
                    text: ' 平均出货次数 ',
                  ),
                  TextSpan(
                    text: stats.caclAvgPulls(rarity),
                    style: TextStyle(color: Colors.green.lighter),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: '最欧 '),
                    TextSpan(
                      text: stats.caclMinPulls(Rarity.six),
                      style: TextStyle(color: Colors.yellow.darkest),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: '最非 '),
                    TextSpan(
                      text: stats.caclMaxPulls(Rarity.six),
                      style: TextStyle(color: Colors.blue.darkest),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );

  Widget _buildChars(GachaStats stats) {
    final charWithPulls = stats.filterCharWithPulls(Rarity.six);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${Rarity.six.label}记录'),
        SizedBox(height: 6.h),
        if (charWithPulls.isEmpty) const Text('无'),
        if (charWithPulls.isNotEmpty)
          Wrap(
            spacing: 6.sp,
            children: charWithPulls
                .map(
                  (charWithPull) => Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: charWithPull.first.name),
                        TextSpan(text: '[${charWithPull.second}]'),
                      ],
                      style: TextStyle(
                        color: Rarity.exploreYourFate(charWithPull.second),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
      ],
    );
  }
}
