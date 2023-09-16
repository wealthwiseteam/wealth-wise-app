import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:wealth_wise/data/models/goals/goal_model.dart';
import 'package:wealth_wise/data/models/goals/goal_response_model.dart';
import 'package:wealth_wise/data/network/network_info.dart';
import 'package:wealth_wise/data/source/local/app_prefs.dart';
import 'package:wealth_wise/data/source/remote/api_service.dart';
import 'package:wealth_wise/resources/service_locator/service_locator.dart';

import '../error_handler/error_handler.dart';

class GoalRepository {
  final NetworkInfo networkInfo;
  final ApiService apiService;

  GoalRepository({
    required this.networkInfo,
    required this.apiService,
  });
  final appPrefs = getIt<AppPrefs>();

  Future<Either<Failure, AllGoalsResponse>> getAllGoals() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await apiService.getData(
          endPoint: EndPoints.allGoals,
          // TODO-Bug-SharedPrefs: the getString in shared Prefs gets List<String> instead of String
          token: "61|E53hhNPJPkjvvenoe9iUMPjRqXvB0ZfKhnYI4geec6df199d",
        );
        return Right(AllGoalsResponse.fromJson(response.data));
      } catch (e) {
        log(e.toString());
        return Left(
          Failure(
            message: "There is Something wrong try again later",
          ),
        );
      }
    } else {
      return Left(
        Failure(
          message: "Check your network connection",
        ),
      );
    }
  }

  Future<Either<Failure, GoalResponse>> getGoal(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await apiService.getData(
          endPoint: "${EndPoints.showGoal}/$id",
          // TODO-Bug-SharedPrefs: the getString in shared Prefs gets List<String> instead of String
          token: "61|E53hhNPJPkjvvenoe9iUMPjRqXvB0ZfKhnYI4geec6df199d",
        );
        return Right(GoalResponse.fromJson(response.data));
      } catch (e) {
        return Left(
          Failure(
            message: "There is Something wrong try again later",
          ),
        );
      }
    } else {
      return Left(
        Failure(
          message: "Check your network connection",
        ),
      );
    }
  }

  Future<Either<Failure, bool>> deleteGoal(int id) async {
    if (await networkInfo.isConnected) {
      try {
        await apiService.deleteData(
          endPoint: "${EndPoints.deleteGoal}/$id",
          // TODO-Bug-SharedPrefs: the getString in shared Prefs gets List<String> instead of String
          token: "61|E53hhNPJPkjvvenoe9iUMPjRqXvB0ZfKhnYI4geec6df199d",
        );
        return const Right(true);
      } catch (e) {
        return Left(
          Failure(
            message: "There is Something wrong try again later",
          ),
        );
      }
    } else {
      return Left(
        Failure(
          message: "Check your network connection",
        ),
      );
    }
  }

  Future<Either<Failure, AllGoalsResponse>> addGoal(Goal goal) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await apiService.postData(
          endPoint: EndPoints.addGoal,
          // TODO-Bug-SharedPrefs: the getString in shared Prefs gets List<String> instead of String
          token: "61|E53hhNPJPkjvvenoe9iUMPjRqXvB0ZfKhnYI4geec6df199d",
          body: goal.toJson(),
        );
        return Right(AllGoalsResponse.fromJson(response.data));
      } catch (e) {
        return Left(
          Failure(
            message: "There is Something wrong try again later",
          ),
        );
      }
    } else {
      return Left(
        Failure(
          message: "Check your network connection",
        ),
      );
    }
  }

  Future<Either<Failure, bool>> updateGoal({
    required int id,
    required Goal goal,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await apiService.postData(
          endPoint: "${EndPoints.updateGoal}/$id",
          // TODO-Bug-SharedPrefs: the getString in shared Prefs gets List<String> instead of String
          token: "61|E53hhNPJPkjvvenoe9iUMPjRqXvB0ZfKhnYI4geec6df199d",
          body: goal.toJson(),
        );
        return Right(response.data['success']);
      } catch (e) {
        log(e.toString());
        return Left(
          Failure(
            message: "There is Something wrong try again later",
          ),
        );
      }
    } else {
      return Left(
        Failure(
          message: "Check your network connection",
        ),
      );
    }
  }
}
