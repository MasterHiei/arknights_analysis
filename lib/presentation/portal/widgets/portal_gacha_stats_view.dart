import 'package:dartx/dartx.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gacha/gacha_pie_chart_provider.dart';
import '../../../application/gacha/gacha_provider.dart';
import '../../../application/gacha/gacha_stats_provider.dart';
import '../../../application/gacha/states/gacha_state.dart';
import '../../../domain/gacha/gacha_stats.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/common/widgets/app_flush_bar.dart';

final _uidProvider = Provider.autoDispose<Uid>(
  (_) => throw UnimplementedError(),
);

class PortalGachaStatsView extends ConsumerWidget {
  const PortalGachaStatsView(this.user, {Key? key}) : super(key: key);

  final User user;

  AutoDisposeStateNotifierProvider<GachaNotifier, GachaState>
      get _gachaProvider => gachaProvider(user);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    return ref.watch(_gachaProvider).map(
          fetching: (state) {
            double? value;
            if (state.total != null) {
              value = (state.current / state.total!) * 100;
            }
            return _buildProgressBar(
              value: value,
              label: '正在获取第${state.current}页数据',
            );
          },
          success: (_) => ProviderScope(
            overrides: [_uidProvider.overrideWithValue(user.uid)],
            child: const _StatsView(),
          ),
          failure: (_) => const _ErrorView(),
        );
  }

  Widget _buildProgressBar({
    double? value,
    String label = '',
  }) =>
      SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ProgressBar(value: value),
            SizedBox(height: 12.h),
            Text(label, style: TextStyle(color: Colors.grey[100])),
          ],
        ),
      );

  void _listenState(BuildContext context, WidgetRef ref) {
    ref.listen<GachaState>(
      _gachaProvider,
      (_, next) => next.maybeWhen(
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
        orElse: () {
          return null;
        },
      ),
    );
  }
}

class _StatsView extends ConsumerWidget {
  const _StatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = ref.watch(_uidProvider);
    return ref.watch(gachaStatsProvider(uid)).when(
          data: (stats) {
            final items = <Widget>[];
            stats.statsPerPool.forEach(
              (key, value) => items.add(_PieChart(key, value)),
            );
            return Wrap(
              children: items,
            );
          },
          error: (_, __) => const SizedBox(),
          loading: () => const SizedBox(),
        );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class _PieChart extends StatelessWidget {
  const _PieChart(this.pool, this.stats, {Key? key}) : super(key: key);

  final String pool;
  final GachaStats stats;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          children: [
            _poolNameLabel,
            SizedBox(height: 4.h),
            _pullDateRangeLabel,
            SizedBox(width: 300.w, height: 400.w, child: _buildChart()),
          ],
        ),
      ),
    );
  }

  Widget get _poolNameLabel => Text(
        pool,
        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
      );

  Widget get _pullDateRangeLabel => Text(
        stats.dateRange,
        style: TextStyle(color: Colors.grey[120], fontSize: 13.sp),
      );

  Widget _buildChart() => Consumer(
        builder: (_, ref, __) {
          final sections = stats.statsPerRarity.mapIndexed((index, pair) {
            final isTouched = ref.watch(gachaPieChartProvider).isTouched(index);
            final rarity = pair.first;
            final chars = pair.second;
            final radius = isTouched ? 130.w : 120.w;
            final fontSize = isTouched ? 15.sp : 13.sp;
            return PieChartSectionData(
              value: chars.length.toDouble(),
              color: rarity.color,
              radius: radius,
              title: stats.caclPullRate(chars),
              titleStyle: TextStyle(color: Colors.white, fontSize: fontSize),
            );
          }).toList();
          final data = PieChartData(
            sections: sections,
            centerSpaceRadius: 0,
            sectionsSpace: 0,
            borderData: FlBorderData(show: false),
            pieTouchData: PieTouchData(
              touchCallback: (event, response) {
                final isInterestedForInteractions =
                    event.isInterestedForInteractions;
                final touchedSection = response?.touchedSection;
                if (!isInterestedForInteractions || touchedSection == null) {
                  ref.read(gachaPieChartProvider).touch(-1);
                  return;
                }
                final index = touchedSection.touchedSectionIndex;
                ref.read(gachaPieChartProvider).touch(index);
              },
            ),
          );
          return PieChart(data);
        },
      );
}
