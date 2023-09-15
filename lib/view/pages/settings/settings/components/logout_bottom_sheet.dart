part of '../settings_page.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 26.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PublicText(
              txt: S.of(context).logout,
              color: AppColors.red,
              size: 20.sp,
              fw: FontWeight.w600,
            ),
            20.ph,
            const PublicDivider(
              width: double.infinity,
              color: AppColors.grey,
            ),
            10.ph,
            PublicText(
              txt: S.of(context).logoutWarning,
            ),
            34.ph,
            PublicButton(
              onPressed: () {},
              title: S.of(context).yesLogout,
              width: 200.w,
            ),
            14.ph,
            PublicOutlineButton(
              onPressed: () => Navigator.pop(context),
              title: S.of(context).cancel,
              width: 200.w,
            ),
          ],
        ),
      ),
    );
  }
}
