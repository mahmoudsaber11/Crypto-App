import 'package:dio/dio.dart';

class DioConsumer {
  final Dio dio;

  DioConsumer({required this.dio});
  Future<Map<String, dynamic>> getData(String path) async {
    final Response response = await dio.get(path,
        options: Options(headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        }));
    return response.data;
  }
}
