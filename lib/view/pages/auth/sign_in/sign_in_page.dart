import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_divider.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';
import '../sign_up/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State< SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var emailController = TextEditingController();

 
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height / 0.5.h,
          width:MediaQuery.of(context).size.width.w ,
          color: AppColors.lightGrey,
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 140.w),
            child: Image.asset(
              AppAssets.signIn,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 180.w),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32), topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const PublicText(
                        txt: 'Welcome back Engy',
                        align: TextAlign.center,
                        size: 20,
                      ),
                       SizedBox(
                        height: 20.h,
                      ),
                      PublicTextFormField(
                        contentPadding:  EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 10.w),
                        hint: 'Email',
                        keyboardtype: TextInputType.emailAddress,
                        prefixIcon: Icons.person,
                        showprefixIcon: true,
                        controller: emailController,
                        validator: (email) {
                          if (email!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'User name',
                          labelStyle: TextStyle(
                            color: AppColors.grey,
                          ),
                          fillColor: AppColors.mintGreen,
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.mintGreen,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 20.0.h,
                      ),
                      PublicTextFormField(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 10.w),
                        hint: 'Password',
                        keyboardtype: TextInputType.text,
                        prefixIcon: Icons.lock,
                        showprefixIcon: true,
                        controller: passwordController,
                        validator: (password) {
                          if (password!.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: AppColors.grey,
                          ),
                          fillColor: AppColors.mintGreen,
                          prefixIcon: Icon(
                            Icons.password,
                            color: AppColors.mintGreen,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 5.0.h,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: const PublicText(
                                txt: 'Forget password?',
                                size: 12,
                                color: AppColors.mintGreen,
                                fw: FontWeight.w400,
                              )),
                        ],
                      ),
                       SizedBox(
                        height: 5.0.h,
                      ),
                      PublicButton(
                        title: "Sign in",
                        backgroundColor: AppColors.mintGreen,
                        titleColor: AppColors.white,
                        width: 300.w,
                        borderRadius: 12,
                        titleSize: 16,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()),
                          );
                        },
                      ),
                       SizedBox(
                        height: 20.0.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          PublicDivider(),
                          PublicText(
                            txt: 'Or sign in with',
                            size: 14,
                            ff: "Inter",
                            fw: FontWeight.w300,
                            color: AppColors.grey,
                          ),
                          PublicDivider(),
                        ],
                      ),
                       SizedBox(
                        height: 10.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            fit: BoxFit.fill,
                            width: 20.w,
                            height: 20.h,
                          ),
                          Image.asset(
                            'assets/images/facebook.png',
                            fit: BoxFit.fill,
                          width: 20.w,
                            height: 20.h,
                          ),
                          Image.asset(
                            'assets/images/twitter.png',
                            fit: BoxFit.fill,
                           width: 20.w,
                            height: 20.h,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
