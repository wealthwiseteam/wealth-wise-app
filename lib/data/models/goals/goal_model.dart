// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:intl/intl.dart';

import 'package:wealth_wise/data/source/local/app_prefs.dart';
import 'package:wealth_wise/resources/service_locator/service_locator.dart';

class Goal {
  final int? id;
  final int? userId;
  final int categoryId;
  final String icon;
  final String name;
  final String color;
  final String note;
  final DateTime startDate;
  final DateTime dueDate;
  final int currentAmount;
  final int targetAmount;
  final DateTime? createAt;

  Goal({
    this.id,
    this.userId,
    required this.categoryId,
    required this.icon,
    required this.name,
    required this.color,
    required this.note,
    required this.startDate,
    required this.dueDate,
    required this.currentAmount,
    required this.targetAmount,
    this.createAt,
  });

  final appPrefs = getIt<AppPrefs>();

  factory Goal.formJson(Map<String, dynamic> json) {
    return Goal(
      id: json['id'],
      userId: json['user_id'],
      categoryId: json['category_id'],
      note: json['note'],
      startDate: DateFormat("yyyy-MM-dd hh:mm:ss").parse(json['start_date']),
      dueDate: DateFormat("yyyy-MM-dd hh:mm:ss").parse(json['end_date']),
      icon: json['icon'],
      name: json['name'],
      color: json['color'],
      currentAmount: json['current_amount'],
      targetAmount: json['target_amount'],
      // createAt: json['created_at'],
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
      // TODO-Bug-backend: - no need to send user id just send the token
      "user_id": 2,
      "category_id": categoryId,
    };
  }

  Goal copyWith({
    int? id,
    int? userId,
    int? categoryId,
    String? icon,
    String? name,
    String? color,
    String? note,
    DateTime? startDate,
    DateTime? dueDate,
    int? currentAmount,
    int? targetAmount,
    DateTime? createAt,
  }) {
    return Goal(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      categoryId: categoryId ?? this.categoryId,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      color: color ?? this.color,
      note: note ?? this.note,
      startDate: startDate ?? this.startDate,
      dueDate: dueDate ?? this.dueDate,
      currentAmount: currentAmount ?? this.currentAmount,
      targetAmount: targetAmount ?? this.targetAmount,
      createAt: createAt ?? this.createAt,
    );
  }
}
