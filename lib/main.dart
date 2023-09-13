import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/resources/styles/app_theme.dart';
import 'package:wealth_wise/view/pages/budgets/budgets_page.dart';
import 'package:wealth_wise/view/pages/statistics/statistics_page.dart';
import 'package:wealth_wise/view/pages/home/home_screen.dart';
import 'package:wealth_wise/view/pages/layouts/layouts_page.dart';
import 'package:wealth_wise/view/pages/notifications/notifications_page.dart';
import 'package:wealth_wise/view/pages/settings/notifications/notifications_settings_page.dart';
import 'package:wealth_wise/view/pages/tips/all_tips/all_tips_page.dart';

import 'resources/localization/generated/l10n.dart';
import 'resources/router/app_router.dart';
import 'view/pages/goals/my_goals/my_goals_page.dart';
import 'view/pages/settings/settings/settings_page.dart';

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
          home: const BudgetsPage()
        );
      },
    );
  }
}