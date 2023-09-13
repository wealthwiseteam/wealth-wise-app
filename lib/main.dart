import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wealth_wise/resources/styles/app_theme.dart';
import 'package:wealth_wise/view/pages/auth/login/logIn_page.dart';
import 'package:wealth_wise/view/pages/first_entering/entering_income/entering_income_page.dart';
import 'package:wealth_wise/view/pages/first_entering/accounts/add_acounts_page.dart';
import 'package:wealth_wise/view/pages/first_entering/add_card/add_card_page.dart';
import 'package:wealth_wise/view/pages/first_entering/add_cash/add_cash_page.dart';
import 'package:wealth_wise/view/pages/first_entering/budget/add_budget_page.dart';

import 'resources/localization/generated/l10n.dart';
import 'resources/router/app_router.dart';
import 'view/pages/auth/congrats/congrats_page.dart';
import 'view/pages/auth/create_new_password/create_new_password.dart';
import 'view/pages/auth/face_id/face_id_page.dart';
import 'view/pages/auth/forget_password/forget_password_page.dart';
import 'view/pages/auth/sign_in/sign_in_page.dart';
import 'view/pages/auth/sign_up/sign_up_page.dart';
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
          title: 'Wealth Wise',
          locale: const Locale("en", "US"),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: AppTheme.light,
          scrollBehavior: ScrollConfiguration.of(context).copyWith(
            physics: const BouncingScrollPhysics(),
          ),
          onGenerateRoute: RouteGenerate.getRoute,
          home: const AddCardPage(),
        );
      },
    );
  }
}
