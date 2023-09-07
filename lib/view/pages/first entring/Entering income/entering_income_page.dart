import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../accounts/add_acounts_page.dart';

class EnteringIncomePage extends StatefulWidget {
  const EnteringIncomePage({super.key});

  @override
  State<EnteringIncomePage> createState() => _EnteringIncomePageState();
}

class _EnteringIncomePageState extends State<EnteringIncomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column( children: [
               
                SizedBox(
            height: 40.h,
                ),
                const PublicText(
            txt: 'Hi,\n Please enter your income',
            align: TextAlign.center,
            size: 20,
            ff: "Inter",
            fw: FontWeight.w400,
                ),
                SizedBox(
            height: 20.h,
                ),
                Container(
            width: 155.w,
            height: 40.h,
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.mintGreen,
                  width: 2,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(child: Text('')),
                ),
                SizedBox(
            height: 80.h,
                ),
                PublicButton(
            title: "Continue",
            backgroundColor: AppColors.mintGreen,
            titleColor: AppColors.white,
            width: 326.w,
            borderRadius: 12,
            titleSize: 16,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddAcountsPage()),
              );
            },
                ),
                   SizedBox(
            height: 10.h,
                ),
                TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddAcountsPage()),
                );
              },
              child: const Text('Maybe later',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600)))
              ]),
          ),
        ),
      ),
    );
  }
}
