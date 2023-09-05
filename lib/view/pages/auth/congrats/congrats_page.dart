import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/pages/auth/sign_in/sign_in_page.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../widgets/public_text.dart';

class CongratsPage extends StatelessWidget {
  const CongratsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 250.w),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: AppColors.mintGreen,
                        size: 100,
                      ),
                      const PublicText(
                        txt: 'congrats!',
                        align: TextAlign.center,
                        size: 20,
                        fw: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const PublicText(
                        txt: 'Your account is successfully \n created',
                        align: TextAlign.center,
                        fw: FontWeight.w400,
                        size: 16,
                        color: Colors.black38,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100.w),
                  child: PublicButton(
                    title: "Continue",
                    backgroundColor: AppColors.mintGreen,
                    titleColor: AppColors.white,
                    width: 327.w,
                    borderRadius: 12,
                    titleSize: 16,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
