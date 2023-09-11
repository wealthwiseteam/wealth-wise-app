import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../../../resources/constants/app_assets.dart';

import '../../../../resources/localization/generated/l10n.dart';

import '../../../widgets/public_card.dart';
import '../../../widgets/public_text.dart';

class AddAcountsPage extends StatefulWidget {
  const AddAcountsPage({super.key});

  @override
  State<AddAcountsPage> createState() => _AddAcountsPageState();
}

class _AddAcountsPageState extends State<AddAcountsPage> {
  List<Widget> cards = [
    PublicCard(imageUrl: AppAssets.creditCard, text: 'Credit card'),
    PublicCard(imageUrl: AppAssets.eWallet, text: 'E- wallet'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PublicText(
                  txt: S.of(context).addAccount,
                  size: 20.sp,
                  ff: "Inter",
                  fw: FontWeight.w400,
                ),
                20.ph,
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 15,
                    children: List.generate(
                        cards.length,
                        (index) => InkWell(
                              onTap: () {},
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 3,
                                child: cards[index],
                              ),
                            )),
                  ),
                ),
                Center(
                  child: PublicText(
                    txt: S.of(context).maybeLater,
                    size: 16.sp,
                    color: AppColors.mintGreen,
                    ff: "Inter",
                    fw: FontWeight.w600,
                  ),
                ),
                40.ph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
