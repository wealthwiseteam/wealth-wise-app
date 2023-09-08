// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../widgets/public_button.dart';
import '../../widgets/public_text.dart';
import '../../widgets/verify_code.dart';
import 'emailVerification_page.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({super.key});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
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
              height: MediaQuery.of(context).size.height / 1.6.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const PublicText(
                      txt: 'Verify code',
                      align: TextAlign.center,
                      size: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          PublicText(
                            txt: 'Please enter the code we emailed you. ',
                            color: Colors.black38,
                            align: TextAlign.center,
                            size: 20,
                          ),
                          PublicText(
                            txt: ' engyyjhdj@gmail.com',
                            color: AppColors.mintGreen,
                            fw: FontWeight.bold,
                            align: TextAlign.center,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Verify(),
                        Verify(),
                        Verify(),
                        Verify(),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    PublicButton(
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
                              builder: (context) =>
                                  const EmailVerificationPage()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const PublicText(
                          txt: 'Don’t receive a code?',
                          color: Colors.black54,
                          fw: FontWeight.w300,
                          ff: "Inter",
                          align: TextAlign.center,
                          size: 20,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const PublicText(
                            txt: 'Resend again',
                            color: AppColors.mintGreen,
                            fw: FontWeight.w700,
                            ff: "Inter",
                            align: TextAlign.center,
                            size: 16,
                          ),
                        )
                      ],
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
