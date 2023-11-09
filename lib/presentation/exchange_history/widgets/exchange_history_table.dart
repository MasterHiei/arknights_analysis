import 'package:data_table_2/data_table_2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gifts/fetch_exchange_history_provider.dart';
import '../../../core/constants/constants.dart';
import '../../../domain/gifts/exchange_log.dart';
import '../../../generated/locale_keys.g.dart';
import '../../../infrastructure/core/extensions/date_time_formatter.dart';
import '../../core/common/widgets/app_empty_view.dart';

class ExchangeHistoryTable extends StatelessWidget {
  const ExchangeHistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: FluentTheme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
            child: Text(
              LocaleKeys.features_exchangeHistory_title,
              style: TextStyle(fontSize: 24.sp),
            ).tr(),
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
        return ref.watch(fetchExchangeHistoryProvider).when(
              data: (logs) => PaginatedDataTable2(
                columns: [
                  const DataColumn2(label: SizedBox(), size: ColumnSize.S),
                  buildColumn(
                    LocaleKeys.features_exchangeHistory_exchangeTime.tr(),
                  ),
                  buildColumn(
                    LocaleKeys.features_exchangeHistory_name.tr(),
                  ),
                  buildColumn(
                    LocaleKeys.features_exchangeHistory_code.tr(),
                  ),
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
                source: _DataTableSource(context, logs),
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
  _DataTableSource(this.context, this.logs);

  final BuildContext context;
  final List<ExchangeLog> logs;

  @override
  DataRow2? getRow(int index) {
    final log = logs[index];
    return DataRow2.byIndex(
      index: index,
      cells: [
        _buildTextCell('${index + 1}'),
        _buildTextCell(log.ts.dateTime.yMMMdHmsString),
        _buildTextCell(log.giftName),
        _buildTextCell(log.code),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => logs.length;

  @override
  int get selectedRowCount => 0;

  material.DataCell _buildTextCell(String text) => material.DataCell(
        Text(
          text,
          style: DefaultTextStyle.of(context).style.copyWith(
                color: Colors.grey[120],
                fontSize: 15.sp,
              ),
        ),
      );
}
