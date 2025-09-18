import 'package:dio/dio.dart';

class ApiServices {
  // final _baseUrl = "https://www.googleapis.com/books/v1/";
  // final Dio dio;
  // ApiServices(this.dio);

  // Future<Map<String, dynamic>> get({required String path}) async {
  //   var response = await dio.get('$_baseUrl$path');
  //   return response.data;
  // }

  static late Dio _dio;

  static void intialize() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.googleapis.com/books/v1/',
        connectTimeout: Duration(seconds: 30),
        sendTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
      ),
    );
  }

  static Future<Response<dynamic>> getData({required String path}) async {
    final response = await _dio.get(path);
    return response;
  }

  static Future<Response<dynamic>> postData({
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.post(
      path,
      data: body,
      queryParameters: queryParameters,
    );
    return response;
  }
}
