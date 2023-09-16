import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wealth_wise/data/models/goals/goal_model.dart';
import 'package:wealth_wise/data/repository/goal_repository.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  final GoalRepository repo;
  GoalsCubit(this.repo) : super(GoalsInitial());

  static GoalsCubit getInstance(BuildContext context) =>
      BlocProvider.of(context);

  /// Sinpper
  bool _spinner = false;
  bool get spinner {
    return _spinner;
  }

  void changeSnipper() {
    _spinner = !_spinner;
  }

  Future<List<Goal>> getMyGoals() async {
    emit(MyGoalsLoadingState());
    final either = await repo.getAllGoals();
    either.fold(
      (failure) {
        emit(MyGoalsErrorState(failure.message));
        return List.empty();
      },
      (response) {
        emit(MyGoalsSuccessState());
        return response.goals;
      },
    );
    return List.empty();
  }

  Future<Goal?> getGoal(int id) async {
    emit(ShowGoalLoadingState());
    final either = await repo.getGoal(id);
    either.fold(
      (failure) {
        emit(ShowGoalErrorState(failure.message));
        return null;
      },
      (response) {
        emit(ShowGoalSuccessState());
        return response.goal;
      },
    );
    return null;
  }

  Future<void> addGoal(Goal goal) async {
    emit(GoalLoadingState());
    final either = await repo.addGoal(goal);
    either.fold(
      (failure) {
        emit(GoalErrorState(failure.message));
      },
      (response) {
        emit(GoalSuccessState());
      },
    );
  }

  Future<void> updateGoal({required int id, required Goal goal}) async {
    emit(GoalLoadingState());
    final either = await repo.updateGoal(id: id, goal: goal);
    either.fold(
      (failure) {
        emit(GoalErrorState(failure.message));
      },
      (response) {
        emit(GoalSuccessState());
      },
    );
  }

  Future<void> deleteGoal(int id) async {
    emit(DeleteGoalLoadingState());
    final either = await repo.deleteGoal(id);
    either.fold(
      (failure) {
        emit(DeleteGoalErrorState(failure.message));
      },
      (response) {
        emit(DeleteGoalSuccessState());
      },
    );
  }
}
