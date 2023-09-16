import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wealth_wise/data/source/local/app_prefs.dart';
import 'package:wealth_wise/resources/service_locator/service_locator.dart';

import '../error_handler/error_handler.dart';
import '../models/auth/auth_request_model.dart';
import '../models/auth/auth_response_model.dart';
import '../network/network_info.dart';
import '../source/remote/api_service.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> login(LoginRequest request);
  Future<Either<Failure, AuthResponse>> register(RegisterRequest request);
  // Future<bool> forgotPassword(String email);
  // Future<bool> verifyEmail(VerifyEmailRequest request);
  // Future<bool> resetPassword(ResetPasswordRequest request);
  Future<Either<Failure, bool>> logout();
}

class AuthRepositoryImpl extends AuthRepository {
  final NetworkInfo networkInfo;
  final ApiService apiService;

  AuthRepositoryImpl({
    required this.networkInfo,
    required this.apiService,
  });

  final appPrefs = getIt<AppPrefs>();

  @override
  Future<Either<Failure, AuthResponse>> register(
      RegisterRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await apiService.postData(
          endPoint: EndPoints.register,
          body: {
            "name": request.name,
            "email": request.email,
            "password": request.password,
            "password_confirmation": request.confirmPassword
          },
        );
        return Right(AuthResponse.fromJson(response.data));
      } catch (e) {
        log(e.toString());
        if (e is DioException &&
            e.response!.statusCode == ResponseStatus.failure) {
          return Left(
            Failure(message: "The email has already been taken."),
          );
        } else {
          return Left(
            Failure(
              message: "There is Something wrong try again later",
            ),
          );
        }
      }
    } else {
      return Left(
        Failure(
          message: "Check your network connection",
        ),
      );
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> login(LoginRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": request.email,
            "password": request.password,
          },
        );
        return Right(AuthResponse.fromJson(response.data));
      } catch (e) {
        log(e.toString());
        if (e is DioException &&
            e.response!.statusCode == ResponseStatus.unathorized) {
          return Left(
            Failure(message: "Wrong Email Or Password"),
          );
        } else {
          return Left(
            Failure(
              message: "There is Something wrong try again later",
            ),
          );
        }
      }
    } else {
      return Left(
        Failure(
          message: "Check your network connection",
        ),
      );
    }
  }

  // @override
  // Future<bool> forgotPassword(String email) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       var response = await apiService.postData(
  //         endPoint: EndPoints.login,
  //         body: {
  //           "email": email,
  //         },
  //       );
  //       return true;
  //     } catch (e) {
  //       throw CustomException(e.toString());
  //     }
  //   } else {
  //     throw CustomException("Check your network connection");
  //   }
  // }

  // @override
  // Future<bool> verifyEmail(VerifyEmailRequest request) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       var response = await apiService.postData(
  //         endPoint: EndPoints.login,
  //         body: {
  //           "email": request.email,
  //           "otp": request.otp,
  //         },
  //       );
  //       return true;
  //     } catch (e) {
  //       throw CustomException(e.toString());
  //     }
  //   } else {
  //     throw CustomException("Check your network connection");
  //   }
  // }

  // @override
  // Future<bool> resetPassword(ResetPasswordRequest request) async {
  //   if (await networkInfo.isConnected) {
  //     try {
  //       var response = await apiService.postData(
  //         endPoint: EndPoints.login,
  //         body: {
  //           "email": request.email,
  //           "password": request.password,
  //           "token": request.token,
  //         },
  //       );
  //       return true;
  //     } catch (e) {
  //       throw CustomException(e.toString());
  //     }
  //   } else {
  //     throw CustomException("Check your network connection");
  //   }
  // }

  @override
  Future<Either<Failure, bool>> logout() async {
    if (await networkInfo.isConnected) {
      try {
        await apiService.postData(
          endPoint: EndPoints.logout,
          body: {},
          // TODO-Bug-Shared Prefs: 
          token: "58|EzAIaYJlg8IYEq0oa2dSnjrO2oSJ8K1G9T6sFOpo41d57eed",
        );
        return const Right(true);
      } catch (e) {
        return Left(
            Failure(message: "There is Something wrong try again later"));
      }
    } else {
      return Left(Failure(message: "Check your network connection"));
    }
  }
}
