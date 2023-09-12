import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../../../../resources/localization/generated/l10n.dart';

import '../../../../widgets/public_Text_button.dart';

import '../../../../widgets/public_text.dart';
import '../../../../widgets/public_text_form_field.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({super.key});

  @override
  State<MyCardPage> createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  late final TextEditingController cardHoldernameController;
  late final TextEditingController cardNumberController;
  late final TextEditingController currentBalanceController;

  @override
  void initState() {
    super.initState();
    cardHoldernameController = TextEditingController();
     cardNumberController = TextEditingController();
    currentBalanceController = TextEditingController();
  }

  @override
  void dispose() {
    cardHoldernameController.dispose();
    cardNumberController.dispose();
    currentBalanceController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () async {
                // for closing keyboard before pop the page to avoid errors
                FocusScope.of(context).unfocus();
                await Future.delayed(const Duration(milliseconds: 10));
                if (!mounted) return;
                Navigator.pop(context);
              }),
          title: PublicText(
              txt: S.of(context).myCard, size: 20.sp, fw: FontWeight.w700),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
          child: Builder(builder: (context) {
            final screenSize = MediaQuery.sizeOf(context);
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  //Card holder name
                  PublicText(
                    txt: S.of(context).cardHolderName,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  PublicTextFormField(
                    hint: "Engy",
                    controller: cardHoldernameController,
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
                  20.ph,
                  //E-wallet number
                  PublicText(
                    txt: S.of(context).cardNumber,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,

                  PublicTextFormField(
                    hint: "1233 4522",
                    controller: cardNumberController,
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
                  20.ph,
                  //  current balance
                  PublicText(
                    txt: S.of(context).currentBalance,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                    width: (screenSize.width - 32.w * 2) / 2,
                    child: PublicTextFormField(
                      hint: "0.00",
                      controller: currentBalanceController,
                      keyboardtype: TextInputType.number,
                      validator: (number) {
                        return null;
                      },
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0.w,
                          color: AppColors.mintGreen,
                        ),
                      ),
                    ),
                  ),
                  20.ph,
                  Divider(
                    color: AppColors.grey,
                    height: 1.h,
                  ),
                  20.ph,
                  PublicText(
                    txt: S.of(context).actions,
                    color: AppColors.black,
                    fw: FontWeight.w400,
                    size: 20.0.sp,
                    ff: 'Inter',
                  ),
                  20.ph,
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.red,
                        child: Icon(Icons.delete),
                      ),
                      PublicTextButton(
                          title: S.of(context).deleteAccount,
                          titleColor: AppColors.red,
                          titleSize: 20.sp,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Column(
                                      children: [
                                        PublicText(
                                          txt: S.of(context).deleteAccountCash,
                                          color: AppColors.black,
                                          fw: FontWeight.w400,
                                          size: 16.0.sp,
                                          ff: 'Inter',
                                        ),
                                        10.ph,
                                        PublicText(
                                          txt: S
                                              .of(context)
                                              .sureDeleteAccountSubTitle,
                                          color: AppColors.grey,
                                          fw: FontWeight.w400,
                                          size: 14.0.sp,
                                          ff: 'Inter',
                                        ),
                                      ],
                                    ),
                                    content: Row(children: [
                                      PublicButton(
                                        width: 100.w,
                                        title: S.of(context).cancel,
                                        titleColor: AppColors.black,
                                        backgroundColor: AppColors.grey,
                                        titleSize: 12,
                                        borderColor: AppColors.black,
                                        onPressed: () {},
                                      ),
                                      5.pw,
                                      PublicButton(
                                        width: 100.w,
                                        title: S.of(context).delete,
                                        titleColor: AppColors.white,
                                        backgroundColor: AppColors.red,
                                        titleSize: 12.sp,
                                        onPressed: () {},
                                      ),
                                    ]),
                                  );
                                });
                          }),
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
