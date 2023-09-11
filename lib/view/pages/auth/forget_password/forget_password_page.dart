import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';
import '../reset_password/reset_password.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  late final TextEditingController forgetPasswordController;

  @override
  void initState() {
    super.initState();
    forgetPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    forgetPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          height: phoneSize.height / 0.5.h,
          color: AppColors.lightGrey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 140.w),
            child: Image.asset(
              AppAssets.resetPassword,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 180.w),
            ),
            Container(
              height: phoneSize.height / 1.5.h,
              width: phoneSize.width,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                child: Column(
                  children: [
                    PublicText(
                      txt: S.of(context).forgetPassword,
                      align: TextAlign.center,
                      size: 20.sp,
                      fw: FontWeight.w400,
                      ff: "Inter",
                    ),
                    40.ph,
                    PublicTextFormField(
                      hint: S.of(context).email,
                      keyboardtype: TextInputType.emailAddress,
                      prefixIcon: Icons.email,
                      showprefixIcon: true,
                      controller: forgetPasswordController,
                      validator: (email) {
                        if (email!.isEmpty) {
                          return S.of(context).enterYourEmail;
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 200.w),
                      child: PublicButton(
                        title: S.of(context).send,
                        width: 300.w,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
