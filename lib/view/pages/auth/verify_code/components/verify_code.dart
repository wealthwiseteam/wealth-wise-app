import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70.w,
          height: 80.h,
          decoration: BoxDecoration(
              color: AppColors.lightGrey2, borderRadius: BorderRadius.circular(15)),
        ),
       
      ],
    );
  }
}
