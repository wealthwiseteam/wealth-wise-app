import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

class AddCashPage extends StatefulWidget {
  const AddCashPage({super.key});

  @override
  State<AddCashPage> createState() => _AddCashPageState();
}

class _AddCashPageState extends State<AddCashPage> {
  late final TextEditingController nameController;
  late final TextEditingController numberController;
  late final TextEditingController currentBalanceController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    currentBalanceController = TextEditingController();
    numberController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    currentBalanceController.dispose();
    numberController.dispose();

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
            txt: S.of(context).addCash,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () async {
              // for closing keyboard before pop the page to avoid errors
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 10));
              if (!mounted) return;
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
          child: Builder(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Card holder name
                  PublicText(
                    txt: S.of(context).name,
                    size: 16,
                    ff: "Inter",
                    fw: FontWeight.w400,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  PublicTextFormField(
                    controller: nameController,
                    validator: (nameController) {
                      return null;
                    },
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mintGreen,
                        width: 2.0.w,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hint: '',
                  ),
                  20.ph,

                  /// Card number
                  PublicText(
                    txt: S.of(context).walletNumber,
                    size: 16,
                    ff: "Inter",
                    fw: FontWeight.w400,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  PublicTextFormField(
                    controller: numberController,
                    validator: (cardNumberController) {
                      return null;
                    },
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.mintGreen,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  20.ph,

                  /// current balance
                  PublicText(
                    txt: S.of(context).currentBalance,
                    size: 16,
                    ff: "Inter",
                    fw: FontWeight.w400,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                    width: (screenSize.width - 32.w * 2) / 2,
                    child: PublicTextFormField(
                      hint: "0.00",
                      controller: currentBalanceController,
                      validator: (cardNameControlle) {
                        return null;
                      },
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.mintGreen,
                            width: 2.0.w,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  60.ph,

                  PublicButton(
                    title: S.of(context).createCash,
                    width: double.infinity,
                    onPressed: () =>Navigator.pushReplacementNamed(context, AppRoutes.enteringBudget),
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
