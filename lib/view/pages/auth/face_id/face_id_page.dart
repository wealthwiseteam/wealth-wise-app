import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';

class FaceIdPage extends StatefulWidget {
  const FaceIdPage({super.key});

  @override
  State<FaceIdPage> createState() => _FaceIdPageState();
}

class _FaceIdPageState extends State<FaceIdPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: PublicText(
              txt: S.of(context).faceIdSubtitle,
              align: TextAlign.center,
              fw: FontWeight.w400,
              ff: "Inter",
              size: 16.sp,
              color: Colors.black45,
            ),
          ),
          Center(
            child: Image.asset(
              AppAssets.facescan,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PublicButton(
                  title: S.of(context).useFaceId,
                  onPressed: () {},
                ),
                5.ph,
                TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).maybeLater,
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
