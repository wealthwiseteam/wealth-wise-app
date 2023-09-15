import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../error_handler/custom_expection.dart';
import '../models/auth/auth_request_model.dart';
import '../models/auth/auth_response_model.dart';
import '../network/network_info.dart';
import '../source/remote/api_service.dart';

abstract class AuthRepository {
  Future<bool> login(LoginRequest request);
  Future<Either<Failure, AuthResponse>> register(RegisterRequest request);
  Future<bool> forgotPassword(String email);
  Future<bool> verifyEmail(VerifyEmailRequest request);
  Future<bool> resetPassword(ResetPasswordRequest request);
  Future<bool> logout();
}

class AuthRepositoryImpl extends AuthRepository {
  final NetworkInfo networkInfo;
  final ApiService apiService;

  AuthRepositoryImpl({
    required this.networkInfo,
    required this.apiService,
  });

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
        if (response.statusCode == ResponseStatus.success) {
          return Right(AuthResponse.fromJson(response.data));
        } else {
          return Left(
            Failure(message: "The email has already been taken."),
          );
        }
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

  @override
  Future<bool> login(LoginRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        var response = await apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": request.email,
            "password": request.password,
          },
        );
        return true;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> forgotPassword(String email) async {
    if (await networkInfo.isConnected) {
      try {
        var response = await apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": email,
          },
        );
        return true;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> verifyEmail(VerifyEmailRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        var response = await apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": request.email,
            "otp": request.otp,
          },
        );
        return true;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> resetPassword(ResetPasswordRequest request) async {
    if (await networkInfo.isConnected) {
      try {
        var response = await apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": request.email,
            "password": request.password,
            "token": request.token,
          },
        );
        return true;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> logout() async {
    if (await networkInfo.isConnected) {
      try {
        var response = await apiService.postData(
          endPoint: EndPoints.login,
          body: {},
          // it will be taken form shared prefs
          token: "",
        );
        return true;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }
}
