import 'package:flutter/material.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String onClickPageRoute;
  const HomeCard({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.onClickPageRoute,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, onClickPageRoute),
      child: Card(
        elevation: 4,
        surfaceTintColor: AppColors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imageUrl),
              PublicText(
                txt: text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
