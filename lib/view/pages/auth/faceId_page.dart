import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../widgets/public_button.dart';
import '../../widgets/public_text.dart';
import 'signIn_page.dart';

class FaceIdPage extends StatefulWidget {
  const FaceIdPage({super.key});

  @override
  State<FaceIdPage> createState() => _FaceIdPageState();
}

class _FaceIdPageState extends State<FaceIdPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: const PublicText(
              txt: 'Use face ID to sign in quickly \n and securely',
              align: TextAlign.center,
              fw: FontWeight.w400,
              ff: "Inter",
              size: 20,
              color: Colors.black38,
            ),
          ),
          Center(
            child: Image.asset(
              AppAssets.facescan,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PublicButton(
                  title: "Use Face ID",
                  backgroundColor: AppColors.mintGreen,
                  titleColor: AppColors.white,
                  width: 327,
                  borderRadius: 12,
                  titleSize: 16,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Maybe later',
                      style:
                          TextStyle(fontSize: 15.0, color: AppColors.mintGreen),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
