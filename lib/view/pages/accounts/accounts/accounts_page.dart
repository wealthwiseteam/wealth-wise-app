import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../../../../resources/constants/app_assets.dart';

import '../../../../../resources/localization/generated/l10n.dart';

import '../../../widgets/public_card.dart';
import '../../../widgets/public_text.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  List<Widget> cards = [
    PublicCard(imageUrl: AppAssets.creditCard, text: 'Credit card'),
    PublicCard(imageUrl: AppAssets.eWallet, text: 'E- wallet'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 10.w),
          child: Column(
            children: [
              PublicText(
                txt: S.of(context).accounts,
                size: 20.sp,
                fw: FontWeight.w700,
              ),
              20.ph,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: PublicText(
                      txt: S.of(context).ListOfAccounts,
                      size: 20.sp,
                      align: TextAlign.start,
                      ff: "Inter",
                      fw: FontWeight.w400,
                    ),
                  ),
                ],
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
                      onTap: () {
                       
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: cards[index],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
