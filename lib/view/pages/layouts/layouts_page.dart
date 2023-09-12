import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/constants/app_assets.dart';
import '../../../resources/localization/generated/l10n.dart';
import '../../../resources/styles/app_colors.dart';
import '../accounts/accounts_page.dart';
import '../home/home_screen.dart';
import '../settings/settings/settings_page.dart';
import '../statistics/statistics_page.dart';

part 'components/bar_item_icon.dart';

class LayoutsPage extends StatefulWidget {
  const LayoutsPage({super.key});

  @override
  State<LayoutsPage> createState() => _LayoutsPageState();
}

class _LayoutsPageState extends State<LayoutsPage> {
  int selectedIndex = 0;
  List containScreen = [
    const HomePage(userName: "ahmed"),
    const AccountsPage(),
    const StatisticsPage(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: containScreen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.mintGreen,
        unselectedItemColor: AppColors.grey,
        iconSize: 35.w,
        selectedFontSize: 11.sp,
        unselectedFontSize: 11.sp,
        items: [
          BottomNavigationBarItem(
            icon: BarItemIcon(
              index: 0,
              selectedIndex: selectedIndex,
              icon: AppAssets.iconHome,
            ),
            label: S.of(context).home,
          ),
          BottomNavigationBarItem(
            icon: BarItemIcon(
              index: 1,
              selectedIndex: selectedIndex,
              icon: AppAssets.iconWallet,
            ),
            label: S.of(context).accounts,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bar_chart_outlined),
            label: S.of(context).statistics,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: S.of(context).settings,
          ),
        ],
      ),
    );
  }
}
