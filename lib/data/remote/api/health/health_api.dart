import 'package:dio/dio.dart';
import '../api_base.dart';

class CheckHealth {
  Future<Response> call() async {
    Response res = await ApiBase().get('/health-check');
    return res;
  }
}
