import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/data/dummay_data/dummay_data.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/pages/budgets/budget_details/budget_details_page.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

part 'components/budget_item.dart';
part 'components/balance_column.dart';
part 'components/custom_extension_panel.dart';

class BudgetsPage extends StatelessWidget {
  const BudgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    log("the whole widget is rebuilt");
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).budgets,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: AppColors.mintGreen,
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              color: AppColors.mintGreen,
              onPressed: () => Navigator.pushNamed(
                context,
                AppRoutes.createEditBudget,
                arguments: true,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              /// Balance
              Container(
                height: 100.h,
                width: double.infinity,
                color: AppColors.mintGreen,
                child: Row(
                  children: [
                    Expanded(
                      child: BalanceColumn(
                        title: S.of(context).incomes,
                        amount: 5000,
                      ),
                    ),
                    Expanded(
                      child: BalanceColumn(
                        title: S.of(context).expenses,
                        amount: 3000,
                      ),
                    ),
                  ],
                ),
              ),
              15.ph,

              Expanded(
                child: ListView(
                  children: [
                    /// incomes
                    CustomExtensionPanel(
                      title: S.of(context).incomes,
                      amount: 5000,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (_, index) {
                        final item = DummayData.incomes[index];
                        return BudgetItem(
                          name: item.name,
                          amount: item.amount,
                        );
                      },
                      separatorBuilder: (_, __) => 10.ph,
                    ),
                    30.ph,

                    /// Expenses
                    CustomExtensionPanel(
                      title: S.of(context).expenses,
                      amount: 3000,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        final item = DummayData.expenses[index];
                        return BudgetItem(
                          name: item.name,
                          amount: item.amount,
                        );
                      },
                      separatorBuilder: (_, __) => 10.ph,
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
