import 'package:flutter/material.dart';

import '../../data/models/goals/category_color_model.dart';
import '../../data/models/settings/category_info_model.dart';
import '../localization/generated/l10n.dart';
import '../../data/models/budget/category_period.dart';
import '../../data/models/goals/category_icon_model.dart';
import '../../view/pages/home/components/home_card.dart';
import 'app_assets.dart';

class AppConstants {
  AppConstants._();

  static List<CategoryInfo> categories = [
    CategoryInfo(icon: AppAssets.iconVehicle, name: S.current.vehicle),
    CategoryInfo(icon: AppAssets.iconHousing, name: S.current.housingRent),
    CategoryInfo(icon: AppAssets.iconEducation, name: S.current.educaiton),
    CategoryInfo(icon: AppAssets.iconHealthCare, name: S.current.healthCare),
    CategoryInfo(icon: AppAssets.iconTravelling, name: S.current.travelling),
    CategoryInfo(icon: AppAssets.iconDonation, name: S.current.donations),
  ];

  static List<CategoryColor> colorsCollection = [
    CategoryColor(name: S.current.blue, color: Colors.blue),
    CategoryColor(name: S.current.red, color: Colors.red),
    CategoryColor(name: S.current.grey, color: Colors.grey),
    CategoryColor(name: S.current.yellow, color: Colors.yellow),
    CategoryColor(name: S.current.purple, color: Colors.purple),
    CategoryColor(name: S.current.green, color: Colors.green),
    CategoryColor(name: S.current.orange, color: Colors.orange),
    CategoryColor(name: S.current.pink, color: Colors.pink),
  ];

  static List<CategoryIcon> iconsCollection = [
    const CategoryIcon(name: "Education", icon: Icons.cast_for_education),
    const CategoryIcon(name: "Sports", icon: Icons.sports),
    const CategoryIcon(name: "Housing", icon: Icons.house),
    const CategoryIcon(name: "Vehicle", icon: Icons.car_rental_outlined),
    const CategoryIcon(name: "Shopping", icon: Icons.cast_outlined),
  ];
  static List<Category> categoryCollection = [
    Category(name: "All Categories"),
    Category(name: S.current.housingRent),
    Category(name: S.current.educaiton),
    Category(name: S.current.foodDrinks),
    Category(name: S.current.health),
    Category(name: S.current.donations),
  ];
  static List<CategoryPeriod> periodCollection = [
    CategoryPeriod(name: "Weakly"),
    CategoryPeriod(name: "Monthly"),
    CategoryPeriod(name: "Yearly"),
  ];
  static List<CategoryAccount> accountCollection = [
    CategoryAccount(name: "Card"),
    CategoryAccount(name: "Cash"),
  ];

  static List<String> periodColleciton = [
    S.current.all,
    S.current.today,
    S.current.thisWeek,
    S.current.thisMonth,
    S.current.thisYear,
  ];
  
  static const List<Widget> cards = [
    HomeCard(imageUrl: AppAssets.transaction, text: 'Transactions'),
    HomeCard(imageUrl: AppAssets.goals, text: 'Goals'),
    HomeCard(imageUrl: AppAssets.bills, text: 'Bills'),
    HomeCard(imageUrl: AppAssets.budgets, text: 'Budgets'),
    HomeCard(imageUrl: AppAssets.financialTips, text: 'Financial tips'),
  ];
}
