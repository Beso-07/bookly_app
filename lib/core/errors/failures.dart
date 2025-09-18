import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  const Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout With ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Invalid SSL certificate from API server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection timeout With ApiServer');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet Connection');
        }
        return ServerFailure('Unexpected error, please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try agin');
    } else {
      return ServerFailure('Opps there was an error, please try again');
    }
  }
}
