import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';
import '../reset_password/reset_password.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          height: MediaQuery.of(context).size.height / 0.7.h,
          width: MediaQuery.of(context).size.width.w,
          color: AppColors.lightGrey,
          child: Padding(
            padding:EdgeInsets.symmetric(vertical: 140.w),
            child: Image.asset(
              AppAssets.resetPassword,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
             Padding(
              padding: EdgeInsets.symmetric(vertical: 180.w),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5.h,
              width: MediaQuery.of(context).size.width.w,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const PublicText(
                      txt: 'Forget password?',
                      align: TextAlign.center,
                      size: 20,
                    ),
                   SizedBox(
                      height: 20.h,
                    ),
                    PublicTextFormField(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 20.w),
                      hint: ' Email',
                      keyboardtype: TextInputType.emailAddress,
                      prefixIcon: Icons.email,
                      showprefixIcon: true,
                      controller: emailController,
                      validator: (email) {
                        if (email!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      // decoration: const InputDecoration(
                      //   labelText: 'Email',
                      //   labelStyle: TextStyle(
                      //     color: AppColors.grey,
                      //   ),
                      //   fillColor: AppColors.mintGreen,
                      //   prefixIcon: Icon(
                      //     Icons.email,
                      //     color: AppColors.mintGreen,
                      //   ),
                      // ),
                    ),
                  
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 200.w),
                      child: PublicButton(
                        title: "Send",
                        backgroundColor: AppColors.mintGreen,
                        titleColor: AppColors.white,
                        width: 300.w,
                        borderRadius: 12,
                        titleSize: 16,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResetPassword()),
                          );
                        },
                      ),
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
