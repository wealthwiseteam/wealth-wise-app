import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:wealth_wise/data/dummay_data/dummay_data.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_text.dart';

class TipArticlePage extends StatelessWidget {
  const TipArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).tipArticle,
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                PublicText(
                  txt: DummayData.tip.title,
                  size: 20.sp,
                  max: 2,
                ),
                24.ph,
                Align(
                  alignment: Alignment.centerLeft,
                  child: PublicText(
                    txt: DummayData.tip.content.toPieces(),
                    color: AppColors.subtitleGrey,
                    max: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
