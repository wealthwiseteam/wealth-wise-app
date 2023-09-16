part of 'goals_cubit.dart';

sealed class GoalsState extends Equatable {
  const GoalsState();

  @override
  List<Object> get props => [];
}

final class GoalsInitial extends GoalsState {}

/// My Goals
abstract class MyGoalsState extends GoalsState {}

class MyGoalsLoadingState extends MyGoalsState {}

class MyGoalsSuccessState extends MyGoalsState {}

class MyGoalsErrorState extends MyGoalsState {
  final String error;
  MyGoalsErrorState(this.error);

  @override
  List<Object> get props => [error];
}

/// Add Or Edit Goal
abstract class GoalState extends GoalsState {}

class GoalLoadingState extends GoalState {}

class GoalSuccessState extends GoalState {}

class GoalErrorState extends GoalState {
  final String error;
  GoalErrorState(this.error);

  @override
  List<Object> get props => [error];
}

/// Delete Goal
abstract class DeleteGoalState extends GoalsState {}

class DeleteGoalLoadingState extends DeleteGoalState {}

class DeleteGoalSuccessState extends DeleteGoalState {}

class DeleteGoalErrorState extends DeleteGoalState {
  final String error;
  DeleteGoalErrorState(this.error);

  @override
  List<Object> get props => [error];
}

/// ShowGoal
abstract class ShowGoalState extends GoalsState {}

class ShowGoalLoadingState extends ShowGoalState {}

class ShowGoalSuccessState extends ShowGoalState {}

class ShowGoalErrorState extends ShowGoalState {
  final String error;
  ShowGoalErrorState(this.error);

  @override
  List<Object> get props => [error];
}
