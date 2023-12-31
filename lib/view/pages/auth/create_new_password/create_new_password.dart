// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
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
            child: Column(
              children: [
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
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                    child: Column(
                      children: [
                        PublicText(
                          txt: S.of(context).CreateNewPassword,
                          align: TextAlign.center,
                          size: 20.sp,
                          fw: FontWeight.w400,
                          ff: "Inter",
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        PublicText(
                          txt: S.of(context).CreateNewPasswordSubtitle,
                          color: Colors.black45,
                          align: TextAlign.center,
                          fw: FontWeight.w300,
                          size: 16.sp,
                          ff: "Inter",
                        ),
                        54.ph,
                        PublicTextFormField(
                          hint: S.of(context).enterNewPassword,
                          keyboardtype: TextInputType.text,
                          prefixIcon: Icons.lock,
                          showprefixIcon: true,
                          controller: passwordController,
                          validator: (password) {
                            if (password!.isEmpty) {
                              return S.of(context).enterYourEmail;
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        PublicTextFormField(
                          hint: S.of(context).enterNewPasswordAgain,
                          keyboardtype: TextInputType.text,
                          prefixIcon: Icons.lock,
                          showprefixIcon: true,
                          controller: passwordController,
                          validator: (password) {
                            if (password!.isEmpty) {
                              return 'Please enter your username';
                            }
                            return null;
                          },
                        ),
                        100.ph,
                        PublicButton(
                          title: S.of(context).create,
                          width: 300.w,
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRoutes.signIn,
                              (_) => false,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
