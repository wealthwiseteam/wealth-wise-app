import 'goal_model.dart';

class AllGoalsResponse {
  final bool success;
  final List<Goal> goals;

  AllGoalsResponse({
    required this.success,
    required this.goals,
  });

  factory AllGoalsResponse.fromJson(Map<String, dynamic> json) {
    return AllGoalsResponse(
      success: json['success'],
      goals: (json['plan'] as List<dynamic>).map(
        (element) {
          return Goal.formJson(element);
        },
      ).toList(),
    );
  }
}

class GoalResponse {
  final bool success;
  final Goal goal;

  GoalResponse({
    required this.success,
    required this.goal,
  });

  factory GoalResponse.fromJson(Map<String, dynamic> json) {
    return GoalResponse(
      success: json['success'],
      goal: Goal.formJson(json['plan']),
    );
  }
}
