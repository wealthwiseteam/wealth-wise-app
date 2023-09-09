import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_list_tile.dart';
import '../../../widgets/public_outline_button.dart';

part 'components/logout_bottom_sheet.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).settings,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 56.h),
          child: Column(
            children: [
              PublicListTile(
                onTap: () => Navigator.pushNamed(context, AppRoutes.profile),
                title: S.of(context).profile,
                icon: AppAssets.iconUser,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () {},
                title: S.of(context).accounts,
                icon: AppAssets.iconWallet,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(context, AppRoutes.privacy),
                title: S.of(context).personalDataPrivacy,
                icon: AppAssets.iconShieldTick,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(context, AppRoutes.security),
                title: S.of(context).security,
                icon: AppAssets.iconLock,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.notifications),
                title: S.of(context).notifications,
                icon: AppAssets.iconNotification,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(context, AppRoutes.categories),
                title: S.of(context).categories,
                icon: AppAssets.iconBubble,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () => Navigator.pushNamed(context, AppRoutes.about),
                title: S.of(context).about,
                icon: AppAssets.iconInfoCircle,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return const LogoutBottomSheet();
                    },
                  );
                },
                title: S.of(context).logout,
                icon: AppAssets.iconLogout,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


