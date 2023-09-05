import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).profile,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: AppColors.mintGreen,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 40.h),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50.w,
                      backgroundColor: AppColors.mintGreen,
                      child: Image.asset(
                        AppAssets.imageProfile,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 2.h,
                      right: 2.w,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: AppColors.mintGreen,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.edit,
                            size: 18.w,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                24.ph,
                PublicTextFormField(
                  label: S.of(context).firstName,
                  keyboardtype: TextInputType.text,
                  controller: TextEditingController(),
                  validator: (name) {
                    if (name!.length < 3) {
                      return S.of(context).enterFirstName;
                    }
                    return null;
                  },
                ),
                24.ph,
                PublicTextFormField(
                  label: S.of(context).lastName,
                  keyboardtype: TextInputType.text,
                  controller: TextEditingController(),
                  validator: (name) {
                    if (name!.length < 3) {
                      return S.of(context).enterLastName;
                    }
                    return null;
                  },
                ),
                24.ph,
                PublicTextFormField(
                  label: S.of(context).email,
                  keyboardtype: TextInputType.emailAddress,
                  controller: TextEditingController(),
                  showprefixIcon: true,
                  prefixIcon: Icons.email,
                  validator: (email) {
                    if (email!.isEmailValid()) {
                      return S.of(context).enterEmail;
                    }
                    return null;
                  },
                ),
                24.ph,
                PublicTextFormField(
                  label: S.of(context).phoneNumber,
                  keyboardtype: TextInputType.text,
                  controller: TextEditingController(),
                  showprefixIcon: true,
                  prefixIcon: Icons.phone,
                  validator: (phone) {
                    if (phone!.isMobileNumberValid()) {
                      return S.of(context).enterPhoneNumber;
                    }
                    return null;
                  },
                ),
                125.ph,
                PublicButton(
                  title: S.of(context).save,
                  width: double.infinity,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
