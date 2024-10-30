import 'package:dio/dio.dart';
import 'package:music/data/remote/endpoint.dart';

class BaseUrl {
  Dio dio = Dio(BaseOptions(
    baseUrl: Endpoint.baseUrl,
    validateStatus: (status) => status! < 500,
  ));
}
