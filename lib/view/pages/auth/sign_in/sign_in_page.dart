// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_divider.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
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
                AppAssets.signIn,
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
                          txt: S.of(context).signInTitle,
                          align: TextAlign.center,
                          size: 20.sp,
                          fw: FontWeight.w400,
                          ff: "Inter",
                        ),
                        20.ph,
                        PublicTextFormField(
                          hint: S.of(context).email,
                          keyboardtype: TextInputType.text,
                          prefixIcon: Icons.email,
                          showprefixIcon: true,
                          controller: emailController,
                          validator: (email) {
                            if (email!.isEmpty) {
                              return S.of(context).enterYourEmail;
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        PublicTextFormField(
                          hint: S.of(context).password,
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
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, AppRoutes.forgotPassword),
                              child: PublicText(
                                txt: S.of(context).forgetPassword,
                                color: AppColors.mintGreen,
                              ),
                            ),
                          ],
                        ),
                        10.ph,
                        PublicButton(
                          title: S.of(context).signIn,
                          width: 300.w,
                          onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context,
                            AppRoutes.layouts,
                            (_) => false,
                          ),
                        ),
                        40.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const PublicDivider(),
                            PublicText(
                              txt: S.of(context).orSignInWith,
                              size: 14.sp,
                              ff: "Inter",
                              fw: FontWeight.w300,
                              color: AppColors.grey,
                            ),
                            const PublicDivider(),
                          ],
                        ),
                        24.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppAssets.google,
                              fit: BoxFit.fill,
                              width: 20.w,
                              height: 20.h,
                            ),
                            Image.asset(
                              AppAssets.facebok,
                              fit: BoxFit.fill,
                              width: 20.w,
                              height: 20.h,
                            ),
                            Image.asset(
                              AppAssets.twitter,
                              fit: BoxFit.fill,
                              width: 20.w,
                              height: 20.h,
                            ),
                          ],
                        )
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
