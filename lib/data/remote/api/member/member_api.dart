import 'package:dio/dio.dart';

import '../api_base.dart';

class MemberApi {
  String url = '/member/api/v1';


  Future<Response> getMainList() async {
    Response res = await ApiBase().get('/main');
    return res;
  }

  Future<Response> getRecentViewList() async {
    Response res = await ApiBase().get('/member/api/v1/recently-views');
    return res;
  }
}
