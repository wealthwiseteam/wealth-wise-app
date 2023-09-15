import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/data/models/auth/auth_request_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/view/widgets/public_snack_bar.dart';
import 'package:wealth_wise/view_model/auth/auth_cubit.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final TextEditingController usernameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    usernameController.dispose();
    emailController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = AuthCubit.getInstance(context);
    final phoneSize = MediaQuery.sizeOf(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listenWhen: (_, current) => current is RegisterState,
      buildWhen: (_, current) => current is RegisterState,
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          cubit.changeSnipper();
        } else {
          if (cubit.spinner) {
            cubit.changeSnipper(); // set false
          }
          if (state is RegisterErrorState) {
            MySnackBar.error(
              message: state.error,
              color: Colors.red,
              context: context,
            );
          } else if (state is LoginSuccessState) {
            Navigator.pushReplacementNamed(context, AppRoutes.enteringIncome);
          }
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: cubit.spinner,
          child: Scaffold(
            body: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  height: phoneSize.height / 0.5.h,
                  color: AppColors.lightGrey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 140.w),
                    child: Image.asset(
                      AppAssets.signUp,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 180.w),
                      ),
                      Container(
                        height: phoneSize.height / 1.5.h,
                        width: phoneSize.width,
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 20.h),
                          child: SingleChildScrollView(
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  /// Title
                                  PublicText(
                                    txt: S.of(context).signUpTitle,
                                    align: TextAlign.center,
                                    size: 20.sp,
                                  ),
                                  20.ph,

                                  /// UserName
                                  PublicTextFormField(
                                    hint: S.of(context).userName,
                                    keyboardtype: TextInputType.name,
                                    prefixIcon: Icons.person,
                                    showprefixIcon: true,
                                    controller: usernameController,
                                    validator: (username) {
                                      if (username!.isEmpty) {
                                        return 'Please enter your username';
                                      } else if (username.length < 3) {
                                        return 'Minimum Character is 3';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  20.ph,

                                  /// Email
                                  PublicTextFormField(
                                    hint: S.of(context).email,
                                    keyboardtype: TextInputType.emailAddress,
                                    prefixIcon: Icons.email,
                                    showprefixIcon: true,
                                    controller: emailController,
                                    validator: (email) {
                                      if (email!.isEmpty) {
                                        return 'Please enter your email';
                                      } else if (!email.isEmailValid()) {
                                        return 'Please enter correct email';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  20.ph,

                                  /// password
                                  PublicTextFormField(
                                    hint: S.of(context).password,
                                    keyboardtype: TextInputType.visiblePassword,
                                    prefixIcon: Icons.lock,
                                    showprefixIcon: true,
                                    controller: passwordController,
                                    validator: (password) {
                                      if (password!.isEmpty) {
                                        return 'Please enter your password';
                                      } else if (!password.isPassValid()) {
                                        return 'Your password is short';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  20.ph,

                                  /// confirm password
                                  PublicTextFormField(
                                    hint: "Confirm Password",
                                    keyboardtype: TextInputType.visiblePassword,
                                    prefixIcon: Icons.lock,
                                    showprefixIcon: true,
                                    controller: confirmPasswordController,
                                    validator: (password) {
                                      if (password!.isEmpty) {
                                        return 'Please enter your password again';
                                      } else if (password !=
                                          passwordController.text) {
                                        return 'Your password is not match';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  40.ph,
                                  PublicButton(
                                    title: S.of(context).signUp,
                                    width: 300.w,
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        final request = RegisterRequest(
                                          name: usernameController.text,
                                          email: emailController.text,
                                          password: passwordController.text,
                                          confirmPassword:
                                              passwordController.text,
                                        );
                                        cubit.register(request);
                                      }
                                    },
                                  ),
                                  10.ph,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      PublicText(
                                        txt: S.of(context).haveAccount,
                                        color: AppColors.grey,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                            context,
                                            AppRoutes.signIn,
                                          );
                                        },
                                        child: Text(
                                          S.of(context).signIn,
                                          style: TextStyle(
                                            fontSize: 12.0.sp,
                                            color: AppColors.mintGreen,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
