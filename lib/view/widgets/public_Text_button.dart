import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/styles/app_colors.dart';
import 'public_text.dart';

class PublicTextButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double borderRadius;
  final double? titleSize;
  final Color titleColor;
  final Color backgroundColor;
  final double? verticalpadding;

  const PublicTextButton({
    Key? key,
    required this.onPressed,
    this.titleSize,
    this.title = "",
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
      child: TextButton(
        onPressed: onPressed,
        child: PublicText(
          txt: title,
          size: titleSize ?? 16.sp,
          color: titleColor,
          fw: FontWeight.w600, // semi bold
        ),
      ),
    );
  }
}
