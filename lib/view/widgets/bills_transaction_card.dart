import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class BillsCard extends StatelessWidget {
  final String title;
  final String date;
  final String money;
  final IconData prefixIcon;

  const BillsCard({
    super.key,
    required this.title,
    required this.date,
    required this.money,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                Icon(
                  prefixIcon,
                  size: 30.h,
                  color: AppColors.mintGreen,
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                PublicText(
                  txt: title,
                  fw: FontWeight.w600,
                  size: 22.sp,
                ),
                PublicText(
                  txt: date,
                  color: Colors.grey,
                  size: 20.sp,
                ),
                PublicText(
                  txt: '$money EGP',
                  size: 20.sp,
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Icon(
                  Icons.warning_amber,
                  size: 25.h,
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
