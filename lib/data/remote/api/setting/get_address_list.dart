import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/response/address_response.dart';

/// 주소 목록 받아오기
class GetAddressList {
  Future<List<AddressResponse>> call() async {
    Response res = await ApiBase().get(
      '/operation/api/v1/address',
    );
    List<AddressResponse> list = res.data.map<AddressResponse>((e) => AddressResponse.fromJson(e)).toList();
    return list;
  }
}
