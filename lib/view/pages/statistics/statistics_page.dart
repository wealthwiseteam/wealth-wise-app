import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:flutter/material.dart';

import '../../../data/dummay_data/dummay_data.dart';
import '../../../data/models/statistics/spent_category_model.dart';
import '../../../data/models/statistics/spent_date_model.dart';
import '../../../resources/constants/app_constants.dart';
import '../../../resources/extensions/extensions.dart';
import '../../../resources/localization/generated/l10n.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/public_divider.dart';
import '../../widgets/public_text.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).statistics,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Peroid
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PublicText(
                        txt: S.of(context).showChartIn,
                        size: 20.sp,
                      ),
                      Container(
                        width: 100.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.mintGreen,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: const SizedBox(),
                          menuMaxHeight: 400.h,
                          value: AppConstants.periodColleciton[0],
                          items: AppConstants.periodColleciton.map((item) {
                            return DropdownMenuItem(
                              value: item,
                              child: PublicText(txt: item),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                16.ph,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: const PublicDividerInfinity(),
                ),
                16.ph,

                /// Columns Chart
                Center(
                  child: Transform.scale(
                    scale: 0.8,
                    child: SfCartesianChart(
                      primaryXAxis: DateTimeCategoryAxis(
                        dateFormat: DateFormat("MMM"),
                      ),
                      series: <ColumnSeries<SpentDate, DateTime>>[
                        ColumnSeries<SpentDate, DateTime>(
                          color: AppColors.mintGreen,
                          dataSource: DummayData.spentDate,
                          xValueMapper: (data, _) => data.date,
                          yValueMapper: (data, _) => data.spent,
                          dataLabelMapper: (data, _) =>
                              "${(data.spent / 8500 * 100).toInt()}%",
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                            labelPosition: ChartDataLabelPosition.outside,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: const PublicDividerInfinity(),
                ),
                16.ph,

                /// Doughnut Chart
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: PublicText(
                    txt: S.of(context).spentCategory,
                    size: 20.sp,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SfCircularChart(
                    legend: const Legend(isVisible: true),
                    series: <DoughnutSeries<SpentCategory, String>>[
                      DoughnutSeries<SpentCategory, String>(
                        explode: true,
                        explodeIndex: 0,
                        radius: "60",
                        innerRadius: "35",
                        dataSource: DummayData.spentCategories,
                        xValueMapper: (data, _) => data.name,
                        yValueMapper: (data, _) => data.spent,
                        dataLabelMapper: (data, _) =>
                            "${(data.spent / 8500 * 100).toInt()}%",
                        dataLabelSettings: const DataLabelSettings(
                          isVisible: true,
                          labelPosition: ChartDataLabelPosition.outside,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
