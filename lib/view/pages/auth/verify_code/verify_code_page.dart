// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import 'components/verify_code.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({super.key});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          height: phoneSize.height / 0.5.h,
          color: AppColors.lightGrey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 140.w),
            child: Image.asset(
              AppAssets.confirmed,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 180.w),
            ),
            Container(
              height: phoneSize.height / 1.5.h,
              width: phoneSize.width,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                child: Column(
                  children: [
                    PublicText(
                      txt: S.of(context).verfiyCode,
                      align: TextAlign.center,
                      size: 20.sp,
                      fw: FontWeight.w400,
                      ff: "Inter",
                    ),
                    10.ph,
                    Column(
                      children: [
                        PublicText(
                          txt: S.of(context).verfiyCodeSubtitle,
                          color: Colors.black38,
                          fw: FontWeight.w300,
                          align: TextAlign.center,
                          size: 16.sp,
                          ff: "Inter",
                        ),
                        PublicText(
                          txt: ' engyyjhdj@gmail.com',
                          color: AppColors.mintGreen,
                          fw: FontWeight.w500,
                          align: TextAlign.center,
                          size: 16.sp,
                        ),
                      ],
                    ),
                    40.ph,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Verify(),
                          15.pw,
                          const Verify(),
                          15.pw,
                          const Verify(),
                          15.pw,
                          const Verify(),
                        ],
                      ),
                    ),
                    40.ph,
                    PublicButton(
                      title: S.of(context).verfiy,
                      width: 300.w,
                      onPressed: () {},
                    ),
                    40.ph,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PublicText(
                          txt: S.of(context).dontReceiveCode,
                          color: Colors.black54,
                          fw: FontWeight.w400,
                          ff: "Inter",
                          align: TextAlign.center,
                          size: 16.sp,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: PublicText(
                            txt: S.of(context).resendAgain,
                            color: AppColors.mintGreen,
                            align: TextAlign.center,
                            size: 16.sp,
                            fw: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
