import 'package:dio/dio.dart';
import '../api_base.dart';

/// 랜덤 닉네임 받기
class GetRandomNickname {
  Future<String> call() async {
    Response res = await ApiBase().get('/operation/api/v1/random-nick-name');
    return res.data;
  }
}
