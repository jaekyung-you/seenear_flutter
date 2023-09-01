import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../const/api_base_string.dart';

class ApiBase {
  ApiBase._privateConstructor();

  static final ApiBase _instance = ApiBase._privateConstructor();
  final GetHttpClient _httpClient = GetHttpClient();

  Map<String, String>? _baseHeader;
  PackageInfo? _packageInfo;
  AndroidDeviceInfo? _androidDeviceInfo;
  IosDeviceInfo? _iosDeviceInfo;

  factory ApiBase() {
    return _instance;
  }

// dot ?? 라이브러리 사용할지 고민 ..
  Future<void> init() async {
    _httpClient.defaultContentType = "application/json";
    _httpClient.timeout = const Duration(hours: 1);
    await _createBaseHeader();
  }

  Future<void> _createBaseHeader() async {
    if (_packageInfo == null) {
      await _getDeviceInfo();
    }

    String deviceInfo = Platform.isAndroid ? _androidDeviceInfo?.model ?? "" : _iosDeviceInfo?.model ?? "";
    String platformVersion = Platform.isAndroid ? _androidDeviceInfo?.version.release ?? "" : _iosDeviceInfo?.systemVersion ?? "";
    String platform = Platform.isIOS ? "ios" : "android";

    _baseHeader?.putIfAbsent(HEADER_DEVICE_INFO, () => deviceInfo);
    _baseHeader?.putIfAbsent(HEADER_DEVICE_VERSION, () => platformVersion);
    _baseHeader?.putIfAbsent(HEADER_APP_VERSION, () => _packageInfo?.version ?? "");
    _baseHeader?.putIfAbsent(HEADER_PLATFORM, () => platform);

    // String uuid = await SharedPrefManager().getUuidStr();
    // if (uuid.isNotEmpty) {
    //   _baseHeader?.putIfAbsent(HEADER_UUID, () => uuid);
    // }
    // String adId = await SharedPrefManager().getAdIdStr();

    // String session = await SharedPrefManager().getSessionStr();
    // if (session.isNotEmpty) {
    //   Map<String, dynamic> sessionJson = jsonDecode(session);
    //   if (sessionJson["session_token"] != null) {
    //     _baseHeader?.putIfAbsent(HEADER_SESSION_TOKEN, () => sessionJson["session_token"]);
    //   }
    // }

    // String authToken = await SharedPrefManager().getAuthTokenStr();
    // if (authToken.isNotEmpty) {
    //   _baseHeader?.putIfAbsent(HEADER_AUTH_TOKEN, () => authToken);
    // }
  }

  Future<void> _getDeviceInfo() async {
    _packageInfo = await PackageInfo.fromPlatform();
    if (Platform.isAndroid) {
      _androidDeviceInfo = await DeviceInfoPlugin().androidInfo;
    } else if (Platform.isIOS) {
      _iosDeviceInfo = await DeviceInfoPlugin().iosInfo;
    }
  }

  Future<Response> get(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
    Decoder? decoder,
  }) async {
    await init();
    try {
      var res = await _httpClient.get(
        url,
        query: query,
      );
      return res;
    } catch (e) {
      rethrow;
    }
  }
}
