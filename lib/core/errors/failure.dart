// بنحط انواع الايرور كلها اللي ممكن تحصل في حالة استدعاء البيانات
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: "badCertificate with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: "Request to ApiServer was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "No internet connection");
      case DioExceptionType.unknown:
        return ServerFailure(
            errorMessage: "Unexpected Error , Please try again");
      default:
        return ServerFailure(
            errorMessage: "Oops,There\'s an error , Please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: "Internal Server Error , Please try again");
    } else {
      return ServerFailure(
          errorMessage: "Oops,There\'s an error , Please try again");
    }
  }
}
