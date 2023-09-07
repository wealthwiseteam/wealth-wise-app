import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/public_text.dart';

class AddAcountsPage extends StatelessWidget {
  const AddAcountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.w,horizontal: 20),
          child: Column(
            children: [
              PublicText(
                    txt: 'Add account',
                    align: TextAlign.center,
                    size: 20.sp,
                    ff: "Inter",
                    fw: FontWeight.w400,
                        ),
                        SizedBox(
            height: 20.h,
                ),
            ],
          ),
        ),
      ),
    );
  }
}