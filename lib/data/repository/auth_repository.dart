
import '../error_handler/custom_expection.dart';
import '../models/auth_request_model.dart';
import '../models/auth_response_model.dart';
import '../network/network_info.dart';
import '../source/remote/api_service.dart';

abstract class AuthRepository {
  Future<bool> login(LoginRequest request);
  Future<bool> register(RegisterRequest request);
  Future<bool> forgotPassword(String email);
  Future<bool> verifyEmail(VerifyEmailRequest request);
  Future<bool> resetPassword(ResetPasswordRequest request);
}

class AuthRepositoryImpl extends AuthRepository {
  final NetworkInfo _networkInfo;
  final ApiService _apiService;

  AuthRepositoryImpl(this._networkInfo, this._apiService);

  @override
  Future<bool> login(LoginRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        var response = await _apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": request.email,
            "password": request.password,
          },
        );
        var responseModel = AuthResponse.fromJson(response.data);
        return responseModel.success;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> register(RegisterRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        var response = await _apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "username": request.name,
            "email": request.email,
            "password": request.password,
            "phone": request.phone,
          },
        );
        var responseModel = AuthResponse.fromJson(response.data);
        return responseModel.success;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> forgotPassword(String email) async {
    if (await _networkInfo.isConnected) {
      try {
        var response = await _apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": email,
          },
        );
        var responseModel = AuthResponse.fromJson(response.data);
        return responseModel.success;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> verifyEmail(VerifyEmailRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        var response = await _apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": request.email,
            "otp": request.otp,
          },
        );
        var responseModel = AuthResponse.fromJson(response.data);
        return responseModel.success;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }

  @override
  Future<bool> resetPassword(ResetPasswordRequest request) async {
    if (await _networkInfo.isConnected) {
      try {
        var response = await _apiService.postData(
          endPoint: EndPoints.login,
          body: {
            "email": request.email,
            "password": request.password,
            "token": request.token,
          },
        );
        var responseModel = AuthResponse.fromJson(response.data);
        return responseModel.success;
      } catch (e) {
        throw CustomException(e.toString());
      }
    } else {
      throw CustomException("Check your network connection");
    }
  }
}
