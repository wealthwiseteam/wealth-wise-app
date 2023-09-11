import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wealth_wise/resources/styles/app_colors.dart';

import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../widgets/public_text.dart';

class CongratsPage extends StatelessWidget {
  const CongratsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 250.h, bottom: 40.h),
            child: Column(
              children: [
                Icon(
                  Icons.check_circle,
                  color: AppColors.mintGreen,
                  size: 100.sp,
                ),
                PublicText(
                  txt: S.of(context).congrats,
                  align: TextAlign.center,
                  size: 20.sp,
                  fw: FontWeight.w700,
                  ff: "Inter",
                ),
                SizedBox(
                  height: 10.h,
                ),
                PublicText(
                  txt: S.of(context).congratsSubtitle,
                  align: TextAlign.center,
                  fw: FontWeight.w400,
                  ff: "Inter",
                  size: 16.sp,
                  color: Colors.black45,
                ),
                const Spacer(),
                PublicButton(
                  title: S.of(context).Continue,
                  width: 300.w,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
