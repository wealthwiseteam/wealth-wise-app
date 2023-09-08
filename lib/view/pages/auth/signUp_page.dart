// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/pages/auth/signIn_page.dart';


import '../../../resources/constants/app_assets.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/public_button.dart';
import '../../widgets/public_text.dart';
import '../../widgets/public_text_form_field.dart';
import 'forgetPassword_page.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage ({super.key});

  @override
  State<SignUpPage > createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage > {
  var emailController = TextEditingController();

  var usernameController = TextEditingController();

  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          height: MediaQuery.of(context).size.height / 0.8.h,
          color: AppColors.lightGrey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 140.w),
            child: Image.asset(
              AppAssets.signUp,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 180.w),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5.h,
              width: MediaQuery.of(context).size.width.w,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const PublicText(
                        txt: 'Create new account',
                        align: TextAlign.center,
                        size: 20,
                      ),
                       SizedBox(
                        height: 10.h,
                      ),
                      PublicTextFormField(
                        contentPadding:  EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 10.w),
                        hint: 'User name',
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
                        decoration: const InputDecoration(
                          labelText: 'User name',
                          labelStyle: TextStyle(
                            color: AppColors.grey,
                          ),
                          fillColor: AppColors.mintGreen,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.mintGreen,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 10.h,
                      ),
                      PublicTextFormField(
                        contentPadding:  EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 10.w),
                        hint: ' Email',
                        keyboardtype: TextInputType.emailAddress,
                        prefixIcon: Icons.email,
                        showprefixIcon: true,
                        controller: emailController,
                        validator: (email) {
                          if (email!.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: AppColors.grey,
                          ),
                          fillColor: AppColors.mintGreen,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.mintGreen,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 10.h,
                      ),
                      PublicTextFormField(
                        contentPadding:  EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 10.w),
                        hint: 'Password',
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
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: AppColors.grey,
                          ),
                          fillColor: AppColors.mintGreen,
                          prefixIcon: Icon(
                            Icons.password,
                            color: AppColors.mintGreen,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 30.h,
                      ),
                      PublicButton(
                        title: "Sign up",
                        backgroundColor: AppColors.mintGreen,
                        titleColor: AppColors.white,
                        width: 300.w,
                        borderRadius: 12,
                        titleSize: 16,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPasswordPage()),
                          );
                        },
                      ),
                       SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Have an account?',
                              style: TextStyle(fontSize: 15.0)),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()),
                          );
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: AppColors.mintGreen),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
