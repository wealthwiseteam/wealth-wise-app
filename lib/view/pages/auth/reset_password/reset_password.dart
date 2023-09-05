import 'package:flutter/material.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';
import '../forget_password/forget_password_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          height: MediaQuery.of(context).size.height / 0.8,
          color: AppColors.lightGrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 140),
            child: Image.asset(
              AppAssets.confirmed,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Column(children: [
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 180),
              child: PublicText(
                txt: 'FIND YOUR \n PERFECT \n TRIP',
                size: 32,
                fw: FontWeight.w500,
                color: AppColors.white,
              )),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const PublicText(
                      txt: 'Create new password',
                      align: TextAlign.center,
                      size: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const PublicText(
                      txt:
                          'Your new password must be different \n from previously used passwords',
                      size: 16,
                      fw: FontWeight.w300,
                      color: AppColors.grey,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PublicTextFormField(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    PublicTextFormField(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    PublicButton(
                      title: "Create",
                      backgroundColor: AppColors.mintGreen,
                      titleColor: AppColors.white,
                      width: 300,
                      height: 50,
                      borderRadius: 12,
                      titleSize: 16,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgetPasswordPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
