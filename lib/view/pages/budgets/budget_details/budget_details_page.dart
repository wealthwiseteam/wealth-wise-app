import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wealth_wise/data/dummay_data/dummay_data.dart';
import 'package:wealth_wise/data/models/statistics/spent_date_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class BudgetDetailsPage extends StatelessWidget {
  const BudgetDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: "Housing & Rent ${S.of(context).budget}",
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            color: AppColors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.edit),
              color: AppColors.mintGreen,
              onPressed: () => Navigator.pushNamed(
                context,
                AppRoutes.createEditBudget,
                arguments: false,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.mintGreen,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PublicText(
                    txt: '0 EGP',
                    color: Colors.white,
                    fw: FontWeight.bold,
                    size: 20.h,
                  ),
                ),
              ),
              40.ph,
              const PublicText(
                txt:
                    "We’ll set a budget each month for Housing & Rent that starts over at the beginning of every month",
                color: AppColors.grey,
                align: TextAlign.center,
              ),
              40.ph,

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
              20.ph,

              /// Delete Button
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(25.w),
                child: Container(
                  height: 50.w, // ".w" It's a circle
                  width: 50.w,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
