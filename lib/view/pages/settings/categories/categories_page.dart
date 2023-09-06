import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/router/app_router.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_list_tile.dart';
import '../../../widgets/public_text.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).categories,
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
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 56.h),
          child: Column(
            children: [
              PublicListTile(
                onTap: () => Navigator.pushNamed(context, AppRoutes.profile),
                title: S.of(context).foodDrinks,
                icon: AppAssets.iconFoodDrinks,
                iconSize: 30.w,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () {},
                title: S.of(context).health,
                icon: AppAssets.iconHealth,
                iconSize: 30.w,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.categorySettings),
                title: S.of(context).housingRent,
                icon: AppAssets.iconHousing,
                iconSize: 30.w,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.categorySettings),
                title: S.of(context).sports,
                icon: AppAssets.iconSports,
                iconSize: 30.w,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.categorySettings),
                title: S.of(context).vehicle,
                icon: AppAssets.iconVehicle,
                iconSize: 30.w,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.categorySettings),
                title: S.of(context).shopping,
                icon: AppAssets.iconShopping,
                iconSize: 30.w,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.categorySettings),
                title: S.of(context).others,
                icon: AppAssets.iconOthers,
                iconSize: 30.w,
              ),
              const PublicDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
