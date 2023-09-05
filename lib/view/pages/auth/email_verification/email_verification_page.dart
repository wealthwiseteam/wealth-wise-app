// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';
import '../verify_code/verify_code_page.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key});

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
 

  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          height: MediaQuery.of(context).size.height / 0.8,
          color: AppColors.lightGrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 140),
            child: Image.asset(
              AppAssets.confirmed,
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
              height: MediaQuery.of(context).size.height / 1.2.h,
              width: MediaQuery.of(context).size.width.w,
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
                      txt: 'Email verification',
                      align: TextAlign.center,
                      size: 20,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const PublicText(
                      txt: 'You will receive a 4 digit code \n to verify next  ',
                      color: Colors.black38,
                      align: TextAlign.center,
                      size: 20,
                    ),        SizedBox(
                      height: 20.h,
                    ),
                    PublicTextFormField(
                      contentPadding:  EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 10.w),
                      hint: 'Please enter your email',
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
                   
                    
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 180.w),
                      child: PublicButton(
                        title: "Send",
                        backgroundColor: AppColors.mintGreen,
                        titleColor: AppColors.white,
                        width: 300.w,
                        borderRadius: 12,
                        titleSize: 16,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyCodePage()),
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
