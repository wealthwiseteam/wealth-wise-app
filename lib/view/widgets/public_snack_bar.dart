import 'package:another_flushbar/flushbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

import 'public_text.dart';

// ignore: must_be_immutable
class MySnackBar extends Flushbar {
  MySnackBar({Key? key}) : super(key: key);

  static Flushbar error({
    required String message,
    required Color color,
    required BuildContext context,
  }) {
    return Flushbar(
      animationDuration: const Duration(milliseconds: 1000),
      backgroundColor: color,
      duration: const Duration(milliseconds: 3000),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      messageText: Center(
        child: PublicText(
          txt: message,
          color: Colors.white,
          size: 12.sp,
           maxLines: 3,
  overflow: TextOverflow.ellipsis,
   softWrap: true, 
        ),
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
    )..show(context);
  }
}
