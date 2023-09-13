part of '../all_tips_page.dart';

class TipCard extends StatelessWidget {
  final String title;
  const TipCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                color: AppColors.grey.withOpacity(0.5),
                spreadRadius: 0.6,
                blurRadius: 4,
                offset: const Offset(0, 2)),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Row(
            children: [
              Expanded(
                child: PublicText(
                  txt: title,
                  max: 2,
                ),
              ),
              10.pw,
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.tipArticle),
                child: PublicText(
                  txt: S.of(context).readMore,
                  color: AppColors.mintGreen,
                  size: 12.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
