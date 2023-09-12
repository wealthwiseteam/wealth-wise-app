import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../../../../resources/constants/app_assets.dart';

import '../../../../../../resources/localization/generated/l10n.dart';

import '../../../../widgets/public_card.dart';
import '../../../../widgets/public_text.dart';

class EWalletPage extends StatefulWidget {
  const EWalletPage({super.key});

  @override
  State<EWalletPage> createState() => _EWalletPageState();
}

class _EWalletPageState extends State<EWalletPage> {
  List<Widget> cards = [
    PublicCard(imageUrl: AppAssets.eWallet, text: 'EGP0'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () async {
                // for closing keyboard before pop the page to avoid errors
                FocusScope.of(context).unfocus();
                await Future.delayed(const Duration(milliseconds: 10));
                if (!mounted) return;
                Navigator.pop(context);
              }),
          title: PublicText(
              txt: S.of(context).myEwallet, size: 20.sp, fw: FontWeight.w700),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 10.w),
          child: Column(
            children: [
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
              60.ph,
              DottedBorder(
                radius: const Radius.circular(10),
                color: AppColors.mintGreen,
                strokeWidth: 2,
                dashPattern: const [
                  5,
                  5,
                ],
                child: Container(
                  width: 320.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: AppColors.mintGreen,
                          )),
                      PublicText(
                        txt: S.of(context).addEwallet,
                        color: AppColors.mintGreen,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
