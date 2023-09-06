import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_divider.dart';
import '../../../widgets/public_text.dart';

class MyGoalsPage extends StatelessWidget {
  const MyGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).myGoals,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: AppColors.mintGreen,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 40.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PublicText(
                  txt: S.of(context).howMuchSaved,
                  color: AppColors.subtitleGrey,
                  size: 20.sp,
                ),
                40.ph,
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset(
                    AppAssets.iconHousing,
                    width: 60.w,
                    height: 60.w,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.mintGreen,
                    size: 22.w,
                  ),
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PublicText(
                        txt: "Travilling",
                      ),
                      4.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PublicText(
                            txt: "${S.of(context).egp} 50",
                            color: AppColors.subtitleGrey,
                          ),
                          const PublicText(
                            txt: "20 %",
                            color: AppColors.subtitleGrey,
                          ),
                        ],
                      ),
                      8.ph,
                      LinearPercentIndicator(
                        padding: EdgeInsets.zero,
                        width: 200.w,
                        lineHeight: 3.h,
                        percent: 0.2,
                        backgroundColor: AppColors.lightGrey,
                        progressColor: AppColors.mintGreen,
                        barRadius: const Radius.circular(16),
                      ),
                    ],
                  ),
                ),
                32.ph,
                const PublicDivider(),
                32.ph,
                InkWell(
                  onTap: () {},
                  child: PublicText(
                    txt: S.of(context).createGoal,
                    color: AppColors.mintGreen,
                    fw: FontWeight.w600,
                    size: 20.sp,
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
