import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

// ignore: must_be_immutable
class PublicCard extends StatelessWidget {
  String imageUrl;
  String text;
  PublicCard({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: AppColors.white,
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0.w,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(imageUrl),
              15.ph,
              PublicText(
                txt: text,
                size: 16.0,
                fw: FontWeight.w400,
                ff: "Inter",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
