import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/data/repository/auth_repository.dart';
import 'package:wealth_wise/data/repository/goal_repository.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_theme.dart';
import 'package:wealth_wise/view/pages/auth/login/logIn_page.dart';
import 'package:wealth_wise/view_model/auth/auth_cubit.dart';
import 'package:wealth_wise/view_model/bills/view_model.dart';
import 'package:wealth_wise/view_model/goals/goals_cubit.dart';

import 'resources/service_locator/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initModule();
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
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => AuthCubit(getIt<AuthRepository>()),
            ),
            BlocProvider(
              create: (context) => BillsCubit(),
            ),
            BlocProvider(
              create: (context) => GoalsCubit(getIt<GoalRepository>()),
            ),
          ],
          child: MaterialApp(
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
            home: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => AuthCubit(getIt()),
                ),
              ],
              child: const LoginPage(),
            ),
          ),
        );
      },
    );
  }
}
