import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/constants/app_constants.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/router/app_router.dart';

import '../../../widgets/public_text.dart';
import '../../goals/create_goal/create_goal_page.dart';

class AddAcountsPage extends StatelessWidget {
  const AddAcountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PublicText(
                txt: S.of(context).addAcont,
                align: TextAlign.center,
                size: 20.sp,
                ff: "Inter",
                fw: FontWeight.w400,
              ),
              SizedBox(
                height: 20.h,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                //     itemCount: AppConstants.categoriesCards.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 10 / 9,
                ),
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.addGoal),
                    child: CategoryCard(
                      category: AppConstants.categories[index],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
