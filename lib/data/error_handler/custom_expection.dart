class CustomException implements Exception {
  final String message;

  CustomException(this.message);
}

class Failure {
  final String message;

  Failure({
    required this.message,
  });
}

class ResponseStatus {
  ResponseStatus._();

  static const int success = 201;
  static const int failure = 422;
}
