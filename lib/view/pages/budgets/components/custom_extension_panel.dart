part of '../budgets_page.dart';

class CustomExtensionPanel extends StatelessWidget {
  final String title;
  final double amount;
  const CustomExtensionPanel({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PublicText(
          txt: title,
          fw: FontWeight.bold,
          size: 20.sp,
        ),
        const Spacer(),
        PublicText(
          txt: "${S.of(context).egp} ${amount.orAbout()}",
          color: AppColors.mintGreen,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_drop_down_outlined,
            color: AppColors.mintGreen,
            size: 40.w,
          ),
        ),
      ],
    );
  }
}
