// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppException implements Exception {
  late final String title;
  late final String message;
  AppException({
    required this.title,
    required this.message,
  });

  @override
  String toString() => 'AppException(title: $title, message: $message)';
}

class NetworkException extends AppException {
  NetworkException({required super.title, required super.message});
}

class ValidationException extends AppException {
  ValidationException({required super.title, required super.message});
}

class UnknownException extends AppException {
  UnknownException({required super.title, required super.message});
}
