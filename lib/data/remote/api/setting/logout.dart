import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:seenear/data/remote/api/api_base.dart';

class Logout {
  Future<bool> call() async {
    String deviceId = '';
    String osType = '';

    // todo: 이거 공통화로 빼기
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await DeviceInfoPlugin().androidInfo;
      deviceId = androidDeviceInfo.id ?? "";
    } else if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await DeviceInfoPlugin().iosInfo;
      deviceId = iosDeviceInfo.identifierForVendor ?? "";
    }

    Response res = await ApiBase().post(
      '/member/api/v1/member-logout',
      data: {'deviceId': deviceId, 'osType': osType},
    );
    return res.statusCode == 200;
  }
}
