// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/view/pages/auth/sign_in/sign_in_page.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';
import '../forget_password/forget_password_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final TextEditingController usernameController;

  late final TextEditingController emailController;

  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    usernameController.dispose();
    emailController.dispose();
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
              AppAssets.signUp,
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PublicText(
                        txt: S.of(context).signUpTitle,
                        align: TextAlign.center,
                        size: 20.sp,
                      ),
                      20.ph,
                      PublicTextFormField(
                        hint: S.of(context).userName,
                        keyboardtype: TextInputType.name,
                        prefixIcon: Icons.person,
                        showprefixIcon: true,
                        controller: usernameController,
                        validator: (username) {
                          if (username!.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                      20.ph,
                      PublicTextFormField(
                        hint: S.of(context).email,
                        keyboardtype: TextInputType.emailAddress,
                        prefixIcon: Icons.email,
                        showprefixIcon: true,
                        controller: emailController,
                        validator: (email) {
                          if (email!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      20.ph,
                      PublicTextFormField(
                        hint: S.of(context).password,
                        keyboardtype: TextInputType.text,
                        prefixIcon: Icons.lock,
                        showprefixIcon: true,
                        controller: passwordController,
                        validator: (password) {
                          if (password!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      40.ph,
                      PublicButton(
                        title: S.of(context).signUp,
                        width: 300.w,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPasswordPage(),
                            ),
                          );
                        },
                      ),
                      10.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PublicText(
                            txt: S.of(context).haveAccount,
                            color: AppColors.grey,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()),
                              );
                            },
                            child: Text(
                              S.of(context).signIn,
                              style: TextStyle(
                                  fontSize: 12.0.sp,
                                  color: AppColors.mintGreen,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Inter"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
