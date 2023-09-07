import 'package:flutter/material.dart';
import 'package:wealth_wise/data/models/goals/category_color_model.dart';
import 'package:wealth_wise/data/models/settings/category_info_model.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';

import '../../data/models/goals/category_icon_model.dart';

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

  static const List<CategoryIcon> iconsCollection = [
    CategoryIcon(name: "Education", icon: Icons.cast_for_education),
    CategoryIcon(name: "Sports", icon: Icons.sports),
    CategoryIcon(name: "Housing", icon: Icons.house),
    CategoryIcon(name: "Vehicle", icon: Icons.car_rental_outlined),
    CategoryIcon(name: "Shopping", icon: Icons.cast_outlined),
  ];

  static List<String> periodColleciton = [
    S.current.all,
    S.current.today,
    S.current.thisWeek,
    S.current.thisMonth,
    S.current.thisYear,
  ];
}
