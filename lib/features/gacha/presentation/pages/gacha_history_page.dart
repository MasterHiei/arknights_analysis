import 'package:badges/badges.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/routing/params/route_params.dart';
import '../../../../core/routing/routes.dart';
import '../../../../infrastructure/core/extensions/date_time_formatter.dart';
import '../../../../presentation/core/common/widgets/app_badge.dart';
import '../../../../presentation/core/common/widgets/app_empty_view.dart';
import '../../domain/entities/gacha_char.dart';
import '../providers/get_gacha_history_provider.dart';
import '../widgets/index.dart';

class GachaHistoryPage extends StatelessWidget {
  const GachaHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: FluentTheme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: const GachaHistoryFilter(),
          ),
          Expanded(
            child: Material(
              textStyle: DefaultTextStyle.of(context).style,
              child: _buildDataTable(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDataTable(BuildContext context) {
    DataColumn2 buildColumn(
      String label, {
      ColumnSize size = ColumnSize.M,
    }) =>
        DataColumn2(
          label: Text(
            label,
            style: DefaultTextStyle.of(context).style.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
          size: size,
        );
    return Consumer(
      builder: (_, ref, __) {
        return ref.watch(getGachaHistoryProvider).when(
              data: (chars) => PaginatedDataTable2(
                columns: [
                  const DataColumn2(label: SizedBox(), size: ColumnSize.S),
                  buildColumn('干员', size: ColumnSize.L),
                  buildColumn('星级', size: ColumnSize.S),
                  buildColumn('寻访'),
                  buildColumn('获取时间', size: ColumnSize.L),
                ],
                columnSpacing: 60.h,
                showCheckboxColumn: false,
                showFirstLastButtons: true,
                availableRowsPerPage: const [
                  Constants.pageSize,
                  Constants.pageSize * 2,
                  Constants.pageSize * 5,
                ],
                onRowsPerPageChanged: (_) {},
                wrapInCard: false,
                source: _DataTableSource(context, chars),
                empty: const AppEmptyView(),
              ),
              error: (_, __) => const SizedBox.shrink(),
              loading: () => const Center(child: ProgressBar()),
            );
      },
    );
  }
}

class _DataTableSource extends DataTableSource {
  _DataTableSource(this.context, this.chars);

  final BuildContext context;
  final List<GachaChar> chars;

  @override
  DataRow2? getRow(int index) {
    final char = chars[index];
    return DataRow2.byIndex(
      index: index,
      cells: [
        _buildTextCell('${index + 1}'),
        DataCell(
          AppBadge(
            showBadge: char.isNew,
            position: BadgePosition.topEnd(top: 4.h, end: -34.w),
            badgeContent: Text(
              'NEW',
              style: DefaultTextStyle.of(context).style.copyWith(
                    color: Colors.white,
                    fontSize: 9.sp,
                  ),
            ),
            child: Text(
              char.name,
              style: DefaultTextStyle.of(context).style.copyWith(
                    color: char.rarity.color,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        _buildTextCell(char.rarity.label),
        _buildTextCell(char.pool),
        _buildTextCell(char.ts.dateTime.yMMMdHmsString),
      ],
      onTap: () => WebviewRoute(
        WebviewParams(
          initialUrl: char.prtsUrl,
        ),
      ).push<void>(context),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => chars.length;

  @override
  int get selectedRowCount => 0;

  DataCell _buildTextCell(String text) => DataCell(
        Text(
          text,
          style: DefaultTextStyle.of(context).style.copyWith(
                color: Colors.grey[120],
                fontSize: 15.sp,
              ),
        ),
      );
}
