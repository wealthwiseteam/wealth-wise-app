import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_Text_button.dart';
import '../../../widgets/public_list_tile.dart';
import '../../../widgets/public_text.dart';

class AddAcountsPage extends StatelessWidget {
  const AddAcountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PublicText(
                    txt:  S.of(context).addAcont,
                    align: TextAlign.center,
                    size: 20.sp,
                    ff: "Inter",
                    fw: FontWeight.w400,
                        ),
                        SizedBox(
            height: 20.h,
                ),
                 PublicTextButton(
                               title: S.of(context).maybeLater,
                               titleColor: AppColors.mintGreen,
                               
                               onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddAcountsPage()),
                  );
                               },
                             )
            ],
          ),
        ),
      ),
    );
  }
}