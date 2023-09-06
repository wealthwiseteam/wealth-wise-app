import 'package:wealth_wise/data/models/settings/category_info_model.dart';
import 'package:wealth_wise/resources/constants/app_assets.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';

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
}
