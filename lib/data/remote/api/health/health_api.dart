import 'package:get/get.dart';
import '../api_base.dart';

class CheckHealth {
  Future<Response> call() async {
    Response res = await ApiBase().get('/health-check');
    print('res: $res');
    return res;
  }
}
