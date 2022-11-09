import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/diamonds/diamond_history_provider.dart';
import '../../../core/constants/constants.dart';
import '../../../domain/diamonds/diamond_change.dart';
import '../../../infrastructure/core/extensions/date_time_formatter.dart';
import '../../core/common/widgets/app_empty_view.dart';

class DiamondHistoryTable extends StatelessWidget {
  const DiamondHistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: FluentTheme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
            child: Text('源石记录', style: TextStyle(fontSize: 24.sp)),
          ),
          Expanded(
            child: material.Material(
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
        return ref.watch(diamondHistoryProvider).when(
              data: (changes) => PaginatedDataTable2(
                columns: [
                  const DataColumn2(label: SizedBox(), size: ColumnSize.S),
                  buildColumn('平台', size: ColumnSize.S),
                  buildColumn('变更', size: ColumnSize.S),
                  buildColumn('存量', size: ColumnSize.S),
                  buildColumn('操作'),
                  buildColumn('获取时间', size: ColumnSize.L),
                ],
                columnSpacing: 60.h,
                showCheckboxColumn: false,
                showFirstLastButtons: true,
                availableRowsPerPage: const [
                  pageSize,
                  pageSize * 2,
                  pageSize * 5,
                ],
                onRowsPerPageChanged: (_) {},
                wrapInCard: false,
                source: _DataTableSource(context, changes),
                empty: const AppEmptyView(),
              ),
              error: (_, __) => const SizedBox.shrink(),
              loading: () => const Center(child: ProgressBar()),
            );
      },
    );
  }
}

class _DataTableSource extends material.DataTableSource {
  _DataTableSource(this.context, this.changes);

  final BuildContext context;
  final List<DiamondChange> changes;

  @override
  DataRow2? getRow(int index) {
    final change = changes[index];
    return DataRow2.byIndex(
      index: index,
      cells: [
        _buildTextCell('${index + 1}'),
        _buildTextCell(change.type),
        _buildTextCell(change.description, color: change.textColor),
        _buildTextCell(change.after.toString()),
        _buildTextCell(change.operation),
        _buildTextCell(change.ts.dateTime.yMMMdHmsString),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => changes.length;

  @override
  int get selectedRowCount => 0;

  material.DataCell _buildTextCell(
    String text, {
    Color? color,
  }) =>
      material.DataCell(
        DefaultTextStyle.merge(
          style: TextStyle(
            color: color ?? Colors.grey[120],
            fontSize: 15.sp,
          ),
          child: Text(text),
        ),
      );
}
