import 'package:get/get.dart';
import '../api_base.dart';

class MemberApi {
  String url = '/member/api/v1';

  Future<Response> checkNicknameDuplication() async {
    Response res = await ApiBase().get('$url/check-duplicated-nickname');
    print('res: $res');
    return res;
  }

  Future<Response> getMainList() async {
    Response res = await ApiBase().get('$url/main');
    print('res: $res');
    return res;
  }

  Future<Response> getRecentViewList() async {
    Response res = await ApiBase().get('$url//member/api/v1/recently-views');
    print('res: $res');
    return res;
  }
}
