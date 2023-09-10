import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/constants/app_constants.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/view/pages/first%20entring/budget/components/account_item.dart';
import 'package:wealth_wise/view/pages/first%20entring/budget/components/period_item.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_Text_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

import 'components/category_item.dart';

class AddBudgetPage extends StatefulWidget {
  const AddBudgetPage({super.key});

  @override
  State<AddBudgetPage> createState() => _AddBudgetPagestate();
}

class _AddBudgetPagestate extends State<AddBudgetPage> {
  late final TextEditingController amountController;

  @override
  void initState() {
    super.initState();
    amountController = TextEditingController();
  }

  @override
  void dispose() {
    amountController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).createBudget,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            color: AppColors.black,
            onPressed: () async {
              // for closing keyboard before pop the page to avoid errors
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 10));
              if (!mounted) return;
              Navigator.pop(context);
            },
          ),
        ),
        //Choose Category
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
          child: Builder(builder: (context) {
            String selectedValue = "All Categories";

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PublicText(
                    txt: S.of(context).expenses,
                    color: AppColors.black,
                    fw: FontWeight.w400,
                    size: 20.0,
                    ff: 'Inter',
                  ),
                  20.ph,
                  PublicText(
                    txt: S.of(context).chooseCategory,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.mintGreen,
                        width: 2.0.w,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: const SizedBox(),
                      menuMaxHeight: 400.h,
                      value: selectedValue,
                      items: AppConstants.categoryCollection.map((item) {
                        return DropdownMenuItem(
                          value: item.name,
                          child: CategoryItem(item: item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      },
                    ),
                  ),
                  20.ph,
                  //Enter amount
                  PublicText(
                    txt: S.of(context).enterAmount,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                    width: (screenSize.width - 32.w * 2) / 2,
                    child: PublicTextFormField(
                      hint: "",
                      controller: amountController,
                      keyboardtype: TextInputType.number,
                      validator: (number) {
                        return null;
                      },
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: AppColors.mintGreen,
                        ),
                      ),
                    ),
                  ),
                  20.ph,

                  /// Enter period
                  PublicText(
                    txt: S.of(context).enterPeriod,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                    width: (screenSize.width - 32.w * 2) / 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.mintGreen,
                          width: 2.0.w,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton(
                        isExpanded: true,
                        underline: const SizedBox(),
                        menuMaxHeight: 400.h,
                        items: AppConstants.periodCollection.map((item) {
                          return DropdownMenuItem(
                            value: item.name,
                            child: PeridItem(item: item),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  20.ph,

                  /// Choose account
                  PublicText(
                    txt: S.of(context).chooseAccount,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                    width: (screenSize.width - 32.w * 2) / 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.mintGreen,
                          width: 2.0.w,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton(
                        isExpanded: true,
                        underline: const SizedBox(),
                        menuMaxHeight: 400.h,
                        items: AppConstants.accountCollection.map((item) {
                          return DropdownMenuItem(
                            value: item.name,
                            child: AccountItem(item: item),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        },
                      ),
                    ),
                  ),

                  60.ph,

                  Column(
                    children: [
                      PublicButton(
                        title: S.of(context).createGoal,
                        width: double.infinity,
                        onPressed: () {},
                      ),
                      PublicTextButton(
                        title: S.of(context).maybeLater,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
