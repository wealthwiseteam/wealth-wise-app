import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_theme.dart';
import 'package:wealth_wise/view/pages/bills/add-bills.dart';
import 'package:wealth_wise/view_model/view_model.dart';

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
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => BillsCubit(),
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
            home: AddBills(),
          ),
        );
      },
    );
  }
}
