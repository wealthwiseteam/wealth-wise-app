import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:wealth_wise/data/models/goals/goal_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_divider.dart';
import '../../../widgets/public_text.dart';

part 'components/goal_list_tile.dart';

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
                GoalListTile(
                  goal: Goal(
                    icon: AppAssets.iconTravelling,
                    name: S.of(context).travelling,
                    savedAmount: 50,
                    targetAmount: 250,
                  ),
                ),
                32.ph,
                const PublicDivider(),
                32.ph,
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.createGoal),
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
