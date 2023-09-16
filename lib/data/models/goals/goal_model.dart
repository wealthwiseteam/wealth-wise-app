import 'package:intl/intl.dart';
import 'package:wealth_wise/data/source/local/app_prefs.dart';
import 'package:wealth_wise/resources/service_locator/service_locator.dart';

class Goal {
  final int? id;
  final int categoryId;
  final String icon;
  final String name;
  final String color;
  final String note;
  final DateTime startDate;
  final DateTime dueDate;
  final double currentAmount;
  final double targetAmount;
  final DateTime? createAt;

  Goal({
    this.id,
    required this.categoryId,
    required this.note,
    required this.startDate,
    required this.dueDate,
    required this.icon,
    required this.name,
    required this.color,
    required this.currentAmount,
    required this.targetAmount,
    this.createAt,
  });

  final appPrefs = getIt<AppPrefs>();

  factory Goal.formJson(Map<String, dynamic> json) {
    return Goal(
      id: json['id'],
      categoryId: json['category_id'],
      note: json['note'],
      startDate: DateFormat("yyyy-MM-dd hh:mm:ss").parse(json['start_date']),
      dueDate: DateFormat("yyyy-MM-dd hh:mm:ss").parse(json['end_date']),
      icon: json['icon'],
      name: json['name'],
      color: json['color'],
      currentAmount: json['current_amount'],
      targetAmount: json['target_amount'],
      createAt: json['created_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "icon": icon,
      "color": color,
      "note": note,
      "start_date": DateFormat("yyyy-MM-dd hh:mm:ss").format(startDate),
      "end_date": DateFormat("yyyy-MM-dd hh:mm:ss").format(dueDate),
      "current_amount": currentAmount,
      "target_amount": targetAmount,
      "user_id": appPrefs.getUserInfo().id,
      "category_id": categoryId,
    };
  }
}
