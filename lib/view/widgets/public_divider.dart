import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class PublicDivider extends StatelessWidget {
  const PublicDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 0.8,
      width: 100.w,
    );
  }
}