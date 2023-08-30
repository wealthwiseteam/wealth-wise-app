import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';


import '../../resources/styles/app_colors.dart';
import 'public_text.dart';

class PublicButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final double width;
  final double borderRadius;
  final double titleSize;
  final Color titleColor;
  final Color backgroundColor;
  final double  verticalpadding;
   final double height;
   final Color borderColor;
   
     
   
    
  
  

  const PublicButton({
    Key? key,
    required this.onPressed,
    required this.titleSize,
    this.title = "",
    this.width = 0,
     this.height = 0,
    this.borderRadius = 12,
    this.titleColor = Colors.white,
    this.backgroundColor = AppColors.mintGreen,
     this.verticalpadding=15,  
     this.borderColor=  AppColors.mintGreen, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: borderColor ),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalpadding ?? 10.h),
          child: PublicText(
            txt: title,
          
            size: titleSize ?? 18.sp,
            color: titleColor,
            fw: FontWeight.bold, 
  softWrap: true,
          ),
        ),
      ),
    );
  }
}
