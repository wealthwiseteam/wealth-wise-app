import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:wealth_wise/data/dummay_data/dummay_data.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';

import '../../../resources/localization/generated/l10n.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/public_text.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).financialTips,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: AppColors.mintGreen,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: ListView(
            children: [
              Image.asset(AppAssets.imageTips),
              15.ph,
              PublicText(
                txt: S.of(context).tipsTitle,
                max: 4,
              ),
              10.ph,
              Align(
                alignment: Alignment.centerLeft,
                child: PublicText(
                  txt: S.of(context).tipsSubtitle,
                  color: AppColors.subtitleGrey,
                ),
              ),
              20.ph,
              ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: DummayData.tipsTitle.length,
                itemBuilder: (_, index) {
                  return TipCard(title: DummayData.tipsTitle[index]);
                },
                separatorBuilder: (_, __) => 15.ph,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TipCard extends StatelessWidget {
  final String title;
  const TipCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
                color: AppColors.grey.withOpacity(0.5),
                spreadRadius: 0.6,
                blurRadius: 4,
                offset: const Offset(0, 2)),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Row(
            children: [
              Expanded(
                child: PublicText(
                  txt: title,
                  max: 2,
                ),
              ),
              Image.asset(AppAssets.goals),
            ],
          ),
        ),
      ),
    );
  }
}
