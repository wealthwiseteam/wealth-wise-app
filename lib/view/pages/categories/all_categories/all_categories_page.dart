import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/data/models/settings/category_info_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/view/widgets/public_Text_button.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/router/app_router.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_list_tile.dart';
import '../../../widgets/public_text.dart';

class AllCategoriesPage extends StatelessWidget {
  const AllCategoriesPage({super.key});

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
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditCategory,
                  arguments: {
                    "isCreate": false,
                    "categoryInfo": CategoryInfo(
                      icon: AppAssets.iconFoodDrinks,
                      name: S.of(context).foodDrinks,
                    ),
                  },
                ),
                title: S.of(context).foodDrinks,
                icon: AppAssets.iconFoodDrinks,
                iconSize: 30.w,
              ),
              const PublicDividerInfinity(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditCategory,
                  arguments: {
                    "isCreate": false,
                    "categoryInfo": CategoryInfo(
                      icon: AppAssets.iconHealth,
                      name: S.of(context).health,
                    ),
                  },
                ),
                title: S.of(context).health,
                icon: AppAssets.iconHealth,
                iconSize: 30.w,
              ),
              const PublicDividerInfinity(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditCategory,
                  arguments: {
                    "isCreate": false,
                    "categoryInfo": CategoryInfo(
                      icon: AppAssets.iconHousingCategory,
                      name: S.of(context).housingRent,
                    ),
                  },
                ),
                title: S.of(context).housingRent,
                icon: AppAssets.iconHousing,
                iconSize: 30.w,
              ),
              const PublicDividerInfinity(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditCategory,
                  arguments: {
                    "isCreate": false,
                    "categoryInfo": CategoryInfo(
                      icon: AppAssets.iconSports,
                      name: S.of(context).sports,
                    ),
                  },
                ),
                title: S.of(context).sports,
                icon: AppAssets.iconSports,
                iconSize: 30.w,
              ),
              const PublicDividerInfinity(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditCategory,
                  arguments: {
                    "isCreate": false,
                    "categoryInfo": CategoryInfo(
                      icon: AppAssets.iconVehicle,
                      name: S.of(context).vehicle,
                    ),
                  },
                ),
                title: S.of(context).vehicle,
                icon: AppAssets.iconVehicle,
                iconSize: 30.w,
              ),
              const PublicDividerInfinity(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditCategory,
                  arguments: {
                    "isCreate": false,
                    "categoryInfo": CategoryInfo(
                      icon: AppAssets.iconShopping,
                      name: S.of(context).shopping,
                    ),
                  },
                ),
                title: S.of(context).shopping,
                icon: AppAssets.iconShopping,
                iconSize: 30.w,
              ),
              const PublicDividerInfinity(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditCategory,
                  arguments: {
                    "isCreate": false,
                    "categoryInfo": CategoryInfo(
                      icon: AppAssets.iconOthers,
                      name: S.of(context).others,
                    ),
                  },
                ),
                title: S.of(context).others,
                icon: AppAssets.iconOthers,
                iconSize: 30.w,
              ),
              const PublicDividerInfinity(),
              16.ph,
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: PublicTextButton(
                  title: S.of(context).createCategory,
                  onPressed: () => Navigator.pushNamed(
                    context,
                    AppRoutes.createEditCategory,
                    arguments: {
                      "isCreate": true,
                      // To avoid errors
                      "categoryInfo": const CategoryInfo(
                        icon: AppAssets.iconFoodDrinks,
                        name: "default",
                      ),
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
