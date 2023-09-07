import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wealth_wise/data/dummay_data/dummay_data.dart';
import 'package:wealth_wise/data/models/statistics/spent_category_model.dart';
import 'package:wealth_wise/resources/constants/app_constants.dart';

import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

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
                child: const PublicDivider(),
              ),
              16.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: PublicText(
                  txt: S.of(context).spentCategory,
                  size: 20.sp,
                ),
              ),
              Center(
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
    );
  }
}
