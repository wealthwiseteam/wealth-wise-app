import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

class PublicText extends StatelessWidget {
  final String txt;
  final String? ff;
  final bool? under;
  final Color color;
  final double size;
  final int? max;
  final FontWeight? fw;
  final TextAlign? align;
  final int? maxLines;
    final TextOverflow ?  overflow;
    final bool? softWrap;

  const PublicText({
    super.key,
    required this.txt,
    this.color = Colors.black,
    required this.size,
    this.under,
    this.align,
    this.max,
    this.fw,
    this.ff,  this.maxLines,  this.overflow, this.softWrap,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: align ?? TextAlign.start,
      maxLines: max ?? 4,
      style: TextStyle(
        
        color: color,
        fontSize: size ?? 16.sp,
        height: 1.32,
        fontFamily: "Inter",
        fontWeight: fw ?? FontWeight.normal,
        decoration:
            under == true ? TextDecoration.underline : TextDecoration.none,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
