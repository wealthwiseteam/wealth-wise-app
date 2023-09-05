import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';

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
                onTap: (){},
                title: S.of(context).profile,
                icon: AppAssets.iconUser,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: (){},
                title: S.of(context).accounts,
                icon: AppAssets.iconWallet,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: (){},
                title: S.of(context).personalDataPrivacy,
                icon: AppAssets.iconShieldTick,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: (){},
                title: S.of(context).security,
                icon: AppAssets.iconLock,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: (){},
                title: S.of(context).notifications,
                icon: AppAssets.iconNotification,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: (){},
                title: S.of(context).categories,
                icon: AppAssets.iconBubble,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: (){},
                title: S.of(context).about,
                icon: AppAssets.iconInfoCircle,
              ),
              const PublicDivider(),
              PublicListTile(
                onTap: (){},
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

class PublicListTile extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onTap;
  const PublicListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: SvgPicture.asset(
        icon,
        width: 22.w,
        height: 22.w,
      ),
      title: PublicText(
        txt: title,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: AppColors.mintGreen,
        size: 22.w,
      ),
    );
  }
}
