import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../widgets/public_Text_button.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';
import '../accounts/add_acounts_page.dart';

class EnteringIncomePage extends StatefulWidget {
  const EnteringIncomePage({super.key});

  @override
  State<EnteringIncomePage> createState() => _EnteringIncomePageState();
}

class _EnteringIncomePageState extends State<EnteringIncomePage> {
  
  late final TextEditingController enterIncomController;
 @override
  void initState() {
    super.initState();
   enterIncomController = TextEditingController();

  }

  @override
  void dispose() {
    enterIncomController.dispose();
   
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(
              AppAssets.enterIncome,
              alignment: Alignment.topCenter,
            ),
              SizedBox(
                height: 40.h,
              ),
              PublicText(
                txt:  S.of(context).enterIncom,
                align: TextAlign.center,
                size: 20,
                ff: "Inter",
                fw: FontWeight.w400,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 125.w),
                child: PublicTextFormField(
                    controller: enterIncomController,
                    validator: (enterIncomController) {
                      return null;
                    },
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mintGreen,
                      width: 2.w
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                  ),
              ),
                20.ph,
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PublicButton(
                  title: S.of(context).Continue,
                  backgroundColor: AppColors.mintGreen,
                  titleColor: AppColors.white,
                  width: 326.w,
                  borderRadius: 12,
                  titleSize: 16,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddAcountsPage()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
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
            ]),
          ),
        ),
      ),
    );
  }
}
