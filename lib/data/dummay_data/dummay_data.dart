import '../models/statistics/spent_category_model.dart';
import '../models/statistics/spent_date_model.dart';
import '../models/notifications/notification_model.dart';

import '../models/tips/tip_model.dart';

class DummayData {
  DummayData._();

  static const String privacyContent =
      """Your privacy is important to us. It is Brainstorming's policy to respect your privacy regarding any information we may collect from you.\n\nWe only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. \nWe also let you know why we’re collecting it and how it will be used.\n\nWe only retain collected information for as long as necessary to provide you with your requested service. What data we store, we’ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use or modification.\n\nWe don’t share any personally identifying information publicly or with third-parties, except when required to by law.
      """;

  static const List<NotificationObject> notifications = [
    NotificationObject(
      title: "Electric Bill Warning",
      date: "Aug 12, 2023",
      content: "you should be careful, your electric bill is coming soon.",
    ),
    NotificationObject(
      title: "Internet Bill Warning",
      date: "Aug 15, 2023",
      content: "you should be careful, your Internt bill is coming soon.",
    ),
    NotificationObject(
      title: "Balance Warning",
      date: "Aug 12, 2023",
      content: "your Expenses are more than your income, check it out",
    ),
    NotificationObject(
      title: "Work Debet",
      date: "Aug 2, 2023",
      content: "remember you should relay dubet after 2 weeks",
    ),
    NotificationObject(
      title: "Internet Bill Warning",
      date: "Aug 15, 2023",
      content: "you should be careful, your Internt bill is coming soon.",
    ),
    NotificationObject(
      title: "Balance Warning",
      date: "Aug 12, 2023",
      content: "your Expenses are more than your income, check it out",
    ),
  ];

  static const List<String> tipsTitle = [
    "Saving for retirement is easier if you start earlier.",
    "You do not need to have a lot of money to start investing.",
    "Set savings goals and budget to achieve them.",
    "Saving for retirement is easier if you start earlier.",
    "You do not need to have a lot of money to start investing.",
    "Set savings goals and budget to achieve them.",
  ];

  static const List<SpentCategory> spentCategories = [
    SpentCategory(name: "Housing", spent: 1000),
    SpentCategory(name: "Food & Dirnk", spent: 5000),
    SpentCategory(name: "Entertainment", spent: 2000),
    SpentCategory(name: "Other", spent: 1000),
  ];

  static List<SpentDate> spentDate = [
    SpentDate(date: DateTime(2023, 1), spent: 1000),
    SpentDate(date: DateTime(2023, 2), spent: 5000),
    SpentDate(date: DateTime(2023, 3), spent: 2000),
    SpentDate(date: DateTime(2023, 4), spent: 3000),
  ];

  static const tip = Tip(
    title: "Saving for retirement is easier if you start earlier.",
    content:
        "When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals. When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals. When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals. When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals. When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals. When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals.",
  );
}
