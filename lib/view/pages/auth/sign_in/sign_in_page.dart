// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wealth_wise/data/models/auth/auth_request_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/view/widgets/public_snack_bar.dart';
import 'package:wealth_wise/view_model/auth/auth_cubit.dart';

import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_button.dart';
import '../../../widgets/public_divider.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.sizeOf(context);
    final cubit = AuthCubit.getInstance(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listenWhen: (_, current) => current is LoginState,
      buildWhen: (_, current) => current is LoginState,
      listener: (context, state) {
        if (state is LoginLoadingState) {
          cubit.changeSnipper();
        } else {
          if (cubit.spinner) {
            cubit.changeSnipper(); // set false
          }
          if (state is LoginErrorState) {
            MySnackBar.error(
              message: state.error,
              color: Colors.red,
              context: context,
            );
          } else if (state is LoginSuccessState) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.layouts,
              (_) => false,
            );
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
                      AppAssets.signIn,
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
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 20.h),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                /// Title
                                PublicText(
                                  txt: S.of(context).signInTitle,
                                  align: TextAlign.center,
                                  size: 20.sp,
                                  fw: FontWeight.w400,
                                  ff: "Inter",
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
                                SizedBox(height: 10.h),

                                /// Password
                                PublicTextFormField(
                                  hint: S.of(context).password,
                                  keyboardtype: TextInputType.visiblePassword,
                                  prefixIcon: Icons.lock,
                                  showprefixIcon: true,
                                  controller: passwordController,
                                  showSuffixIcon: true,
                                  isPassword: true,
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

                                /// forgot password
                                Row(
                                  children: [
                                    const Spacer(),
                                    TextButton(
                                      onPressed: () => Navigator.pushNamed(
                                          context, AppRoutes.forgotPassword),
                                      child: PublicText(
                                        txt: S.of(context).forgetPassword,
                                        color: AppColors.mintGreen,
                                      ),
                                    ),
                                  ],
                                ),
                                10.ph,

                                /// Sign In
                                PublicButton(
                                  title: S.of(context).signIn,
                                  width: 300.w,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      final request = LoginRequest(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      );

                                      cubit.login(request);
                                    }
                                  },
                                ),
                                40.ph,

                                /// Social Login
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const PublicDivider(),
                                    PublicText(
                                      txt: S.of(context).orSignInWith,
                                      size: 14.sp,
                                      ff: "Inter",
                                      fw: FontWeight.w300,
                                      color: AppColors.grey,
                                    ),
                                    const PublicDivider(),
                                  ],
                                ),
                                24.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppAssets.google,
                                      fit: BoxFit.fill,
                                      width: 20.w,
                                      height: 20.h,
                                    ),
                                    Image.asset(
                                      AppAssets.facebok,
                                      fit: BoxFit.fill,
                                      width: 20.w,
                                      height: 20.h,
                                    ),
                                    Image.asset(
                                      AppAssets.twitter,
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
