import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PublicText extends StatelessWidget {
  final String txt;
  final String? ff;
  final bool? under;
  final Color color;
  final double? size;
  final int? maxLines;
  final FontWeight? fw;
  final TextAlign? align;
  final TextOverflow? overflow;
  final bool? softWrap;

  const PublicText({
    super.key,
    required this.txt,
    this.color = Colors.black,
    this.size,
    this.under,
    this.align,
    this.maxLines,
    this.fw,
    this.ff,
    this.overflow,
    this.softWrap,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: align ?? TextAlign.start,
      maxLines: maxLines ?? 4,
      style: TextStyle(
        color: color,
        fontSize: size ?? 16.sp,
        height: 1.32,
        fontFamily: "",
        fontWeight: fw ?? FontWeight.normal,
        decoration:
            under == true ? TextDecoration.underline : TextDecoration.none,
        overflow: overflow ?? TextOverflow.ellipsis,
      ),
    );
  }
}
