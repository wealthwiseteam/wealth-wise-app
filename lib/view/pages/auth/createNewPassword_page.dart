// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../resources/constants/app_assets.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/public_button.dart';
import '../../widgets/public_text.dart';
import '../../widgets/public_text_form_field.dart';
import 'emailVerification_page.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  State<CreateNewPasswordPage> createState() =>
      _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          height: MediaQuery.of(context).size.height / 0.5.h,
          color: AppColors.lightGrey,
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 140.w),
            child: Image.asset(
              AppAssets.resetpassword,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(children: [
             Padding(
              padding: EdgeInsets.symmetric(vertical: 180.w),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                 
                  children: [
                    const PublicText(
                      txt: 'Create new password',
                      align: TextAlign.center,
                      size: 20,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const PublicText(
                      txt:
                          'Your new password must be different \n from previously used passwords ',
                      color: Colors.black38,
                      align: TextAlign.center,
                      size: 20,
                    ),
                    PublicTextFormField(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      hint: '',
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
                      height: 10.h,
                    ),
                    PublicTextFormField(
                      contentPadding:  EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 10.w),
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
                      hint: '',
                    ),
                
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 120.w),
                      child: PublicButton(
                        title: "Create",
                        backgroundColor: AppColors.mintGreen,
                        titleColor: AppColors.white,
                        width: 300.w,
                        borderRadius: 12,
                        titleSize: 16,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EmailVerificationPage()),
                          );
                        },
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
