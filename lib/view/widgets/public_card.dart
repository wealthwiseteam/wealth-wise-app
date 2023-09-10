import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/styles/app_colors.dart';
import 'public_text.dart';

class PublicCard extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double borderRadius;
  final double? titleSize;
  final Color titleColor;
  final Color ?borderColor;
  final Color backgroundColor;
  final double? verticalpadding;
   
final String? image;
  const PublicCard({
    Key? key,
    required this.onPressed,
    this.titleSize,
 this.borderColor,
    this.title = "",
    this.image,
    this.width,
    this.borderRadius = 12,
    this.titleColor = AppColors.mintGreen,
    this.backgroundColor = AppColors.white,
    this.verticalpadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200.w,
      child: Container(
        width: 151.w,
        height: 114.h,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalpadding ?? 15.h),
          child: Column(
            children: [
              PublicText(
                txt: title,
                size: titleSize ?? 16.sp,
                color: titleColor,
                fw: FontWeight.bold,
                softWrap: true,
              ),
              Image.asset('image'),
            ],
          ),
        ),
      ),
    );
  }
}
