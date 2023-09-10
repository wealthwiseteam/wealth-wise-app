part of '../notifications_page.dart';

class NotificationCard extends StatelessWidget {
  final NotificationObject notification;
  const NotificationCard({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 86.h,
        width: 394.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.5),
              spreadRadius: 0.6,
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              AppAssets.iconNotificationCircle,
              height: 40.w,
              width: 40.w,
            ),
            10.pw,
            SizedBox(
              width: MediaQuery.sizeOf(context).width - 2 * 28.w - 50.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: PublicText(
                          txt: notification.title,
                          fw: FontWeight.w500,
                          size: 18.sp,
                        ),
                      ),
                      PublicText(
                        txt: notification.date,
                        size: 13.sp,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  PublicText(
                    txt: notification.content,
                    size: 16.sp,
                    fw: FontWeight.w400,
                    color: AppColors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
