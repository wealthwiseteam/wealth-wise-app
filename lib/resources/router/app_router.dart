import 'package:flutter/material.dart';
import 'package:wealth_wise/data/models/settings/category_info_model.dart';
import 'package:wealth_wise/view/pages/goals/add_goal/add_goal_page.dart';
import 'package:wealth_wise/view/pages/goals/create_goal/create_goal_page.dart';
import 'package:wealth_wise/view/pages/settings/about/about_page.dart';
import 'package:wealth_wise/view/pages/settings/categories/categories_page.dart';
import 'package:wealth_wise/view/pages/settings/category_settings/category_settings_page.dart';
import 'package:wealth_wise/view/pages/settings/notifications/notifications_settings_page.dart';
import 'package:wealth_wise/view/pages/settings/privacy/privacy_page.dart';
import 'package:wealth_wise/view/pages/settings/profile/profile_page.dart';
import 'package:wealth_wise/view/pages/settings/security/security_page.dart';
import 'package:wealth_wise/view/pages/tips/tip_article/tip_article_page.dart';

class AppRoutes {
  AppRoutes._private();

  /// Intro
  static const String splash = "splash";
  static const String onBoarding = "onBoarding";

  /// Auth
  static const String welcome = "welcome";
  static const String login = "login";
  static const String signUp = "signUp";

  /// Settings
  static const String about = "about";
  static const String categories = "categories";
  static const String notifications = "notifications";
  static const String privacy = "privacy";
  static const String profile = "profile";
  static const String security = "security";
  static const String categorySettings = "category settings";

  /// Goals
  static const String createGoal = "create goal";
  static const String addGoal = "add goal";

  /// Tips 
  static const String tipArticle = "tip article";
  
  
}

class RouteGenerate {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      ///Intro
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );

      /// Settings
      case AppRoutes.about:
        return MaterialPageRoute(
          builder: (_) => const AboutPage(),
        );
      case AppRoutes.categories:
        return MaterialPageRoute(
          builder: (_) => const CategoriesPage(),
        );
      case AppRoutes.notifications:
        return MaterialPageRoute(
          builder: (_) => const NotificationsSettingsPage(),
        );
      case AppRoutes.privacy:
        return MaterialPageRoute(
          builder: (_) => const PrivacyPage(),
        );
      case AppRoutes.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfilePage(),
        );
      case AppRoutes.security:
        return MaterialPageRoute(
          builder: (_) => const SecurityPage(),
        );
      case AppRoutes.categorySettings:
        return MaterialPageRoute(
          builder: (_) => CategorySettingsPage(
            categoryInfo: routeSettings.arguments as CategoryInfo,
          ),
        );

      /// create Goals
      case AppRoutes.createGoal:
        return MaterialPageRoute(
          builder: (_) => const CreateGoalPage(),
        );
      case AppRoutes.addGoal:
        return MaterialPageRoute(
          builder: (_) => const AddGoalPage(),
        );
      
      /// Tip Article
      case AppRoutes.tipArticle:
        return MaterialPageRoute(
          builder: (_) => const TipArticlePage(),
        );
      
      
      default:
        return MaterialPageRoute(
            builder: (_) => _undfinedPage(route: routeSettings.name));
    }
  }

  static Scaffold _undfinedPage({String? route}) {
    return Scaffold(
      appBar: AppBar(title: const Text("Undfined Page")),
      body: Center(child: Text("${route ?? "Undifined"} Page")),
    );
  }
}
