import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/pages/auth/congrats/congrats_page.dart';
import 'package:wealth_wise/view/pages/auth/face_id/face_id_page.dart';

import 'view/pages/auth/create_new_password/create_new_password.dart';
import 'view/pages/auth/email_verification/email_verification_page.dart';
import 'view/pages/auth/forget_password/forget_password_page.dart';
import 'view/pages/auth/login/login_page.dart';
import 'view/pages/auth/reset_password/reset_password.dart';
import 'view/pages/auth/sign_in/sign_in_page.dart';
import 'view/pages/auth/sign_up/sign_up_page.dart';
import 'view/pages/auth/verify_code/components/verify_code.dart';
import 'view/pages/auth/verify_code/verify_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Wealth Wise Project',
          locale: const Locale("en", "US"),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: ThemeData(
            fontFamily: "Inter",
            useMaterial3: true,
          ),
          scrollBehavior: ScrollConfiguration.of(context).copyWith(
            physics: const BouncingScrollPhysics(),
          ),
          home: const VerifyCodePage(),
        );
      },
    );
  }
}
