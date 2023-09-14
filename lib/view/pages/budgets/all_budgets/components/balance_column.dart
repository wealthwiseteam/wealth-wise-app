part of '../budgets_page.dart';

class BalanceColumn extends StatelessWidget {
  final String title;
  final double amount;
  const BalanceColumn({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PublicText(
          txt: title,
          color: AppColors.white,
        ),
        10.ph,
        PublicText(
          txt: "${S.of(context).egp} ${amount.orAbout()}",
          color: AppColors.white,
          fw: FontWeight.w500,
          size: 20.sp,
        ),
      ],
    );
  }
}