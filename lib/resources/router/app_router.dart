import 'package:flutter/material.dart';
import 'package:wealth_wise/data/models/goals/goal_model.dart';
import 'package:wealth_wise/data/models/settings/category_info_model.dart';
import 'package:wealth_wise/view/pages/auth/congrats/congrats_page.dart';
import 'package:wealth_wise/view/pages/auth/create_new_password/create_new_password.dart';
import 'package:wealth_wise/view/pages/auth/face_id/face_id_page.dart';
import 'package:wealth_wise/view/pages/auth/forget_password/forget_password_page.dart';
import 'package:wealth_wise/view/pages/auth/sign_in/sign_in_page.dart';
import 'package:wealth_wise/view/pages/auth/sign_up/sign_up_page.dart';
import 'package:wealth_wise/view/pages/auth/verify_code/verify_code_page.dart';
import 'package:wealth_wise/view/pages/budgets/budget_details/budget_details_page.dart';
import 'package:wealth_wise/view/pages/budgets/create_edit_budget/create_edit_budget.dart';
import 'package:wealth_wise/view/pages/categories/all_categories/all_categories_page.dart';
import 'package:wealth_wise/view/pages/categories/create_edit_category/create_edit_category_page.dart';
import 'package:wealth_wise/view/pages/first_entering/accounts/add_acounts_page.dart';
import 'package:wealth_wise/view/pages/first_entering/add_card/add_card_page.dart';
import 'package:wealth_wise/view/pages/first_entering/add_cash/add_cash_page.dart';
import 'package:wealth_wise/view/pages/first_entering/budget/add_budget_page.dart';
import 'package:wealth_wise/view/pages/first_entering/entering_income/entering_income_page.dart';
import 'package:wealth_wise/view/pages/goals/add_goal/add_goal_page.dart';
import 'package:wealth_wise/view/pages/goals/create_goal/create_goal_page.dart';
import 'package:wealth_wise/view/pages/goals/goal_details/goal_details_page.dart';
import 'package:wealth_wise/view/pages/layouts/layouts_page.dart';
import 'package:wealth_wise/view/pages/settings/about/about_page.dart';
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
  static const String login = "login";
  static const String signIn = "sign in";
  static const String signUp = "sign Up";
  static const String forgotPassword = "forgot password";
  static const String verifyCode = "verfiy code";
  static const String resetPassword = "reset password";
  static const String faceId = "face id";
  static const String congrats = "congrats";

  /// First Enter
  static const String enteringIncome = "entering income";
  static const String enteringAccounts = "entering accounts";
  static const String enteringAddCard = "entering card";
  static const String enteringAddWallet = "entering wallet";
  static const String enteringBudget = "entering Budget";

  /// Layouts
  static const String layouts = "layouts";

  /// Settings
  static const String about = "about";
  static const String categories = "categories";
  static const String notifications = "notifications";
  static const String privacy = "privacy";
  static const String profile = "profile";
  static const String security = "security";
  static const String createEditCategory = "create & edit category";

  /// Goals
  static const String createGoal = "create goal";
  static const String addGoal = "add goal";
  static const String goalProgress = "goal progress";

  /// Tips
  static const String tipArticle = "tip article";

  /// Budgets
  static const String createEditBudget = "create & edit budget";
  static const String budgetDetials = "budget details";
}

class RouteGenerate {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      ///Intro
      ///Auth
      case AppRoutes.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignInPage(),
        );
      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        );
      case AppRoutes.forgotPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordPage(),
        );
      case AppRoutes.verifyCode:
        return MaterialPageRoute(
          builder: (context) => const VerifyCodePage(),
        );
      case AppRoutes.resetPassword:
        return MaterialPageRoute(
          builder: (context) => const CreateNewPasswordPage(),
        );
      case AppRoutes.faceId:
        return MaterialPageRoute(
          builder: (context) => const FaceIdPage(),
        );
      case AppRoutes.congrats:
        return MaterialPageRoute(
          builder: (context) => const CongratsPage(),
        );

      /// First Enter
      case AppRoutes.enteringIncome:
        return MaterialPageRoute(
          builder: (context) => const EnteringIncomePage(),
        );
      case AppRoutes.enteringBudget:
        return MaterialPageRoute(
          builder: (context) => const AddBudgetPage(),
        );
      case AppRoutes.enteringAccounts:
        return MaterialPageRoute(
          builder: (context) => const AddAcountsPage(),
        );
      case AppRoutes.enteringAddCard:
        return MaterialPageRoute(
          builder: (context) => const AddCardPage(),
        );
      case AppRoutes.enteringAddWallet:
        return MaterialPageRoute(
          builder: (context) => const AddCashPage(),
        );

      /// Layouts
      case AppRoutes.layouts:
        return MaterialPageRoute(
          builder: (context) => const LayoutsPage(),
        );

      /// Settings
      case AppRoutes.about:
        return MaterialPageRoute(
          builder: (_) => const AboutPage(),
        );
      case AppRoutes.categories:
        return MaterialPageRoute(
          builder: (_) => const AllCategoriesPage(),
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
      case AppRoutes.createEditCategory:
        return MaterialPageRoute(
          builder: (_) => CreateEditCategoryPage(
            isCreate: (routeSettings.arguments as Map)['isCreate'],
            categoryInfo: (routeSettings.arguments as Map)['categoryInfo'],
          ),
        );

      /// Goals
      case AppRoutes.createGoal:
        return MaterialPageRoute(
          builder: (_) => const CreateGoalPage(),
        );
      case AppRoutes.addGoal:
        return MaterialPageRoute(
          builder: (_) => const AddGoalPage(),
        );
      case AppRoutes.goalProgress:
        return MaterialPageRoute(
          builder: (_) => GoalDetailsPage(
            goal: routeSettings.arguments as Goal,
          ),
        );

      /// Tip Article
      case AppRoutes.tipArticle:
        return MaterialPageRoute(
          builder: (_) => const TipArticlePage(),
        );

      /// budgets
      case AppRoutes.createEditBudget:
        return MaterialPageRoute(
          builder: (_) => CreateEditBudgetPage(
            isCreate: (routeSettings.arguments as bool?) ?? false,
          ),
        );
      case AppRoutes.budgetDetials:
        return MaterialPageRoute(
          builder: (_) => const BudgetDetailsPage(),
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
