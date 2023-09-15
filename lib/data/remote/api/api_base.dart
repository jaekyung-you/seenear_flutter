import 'dart:io';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../const/api_base_string.dart';

class ApiBase {
  ApiBase._privateConstructor();

  static final ApiBase _instance = ApiBase._privateConstructor();
  final Dio dio = Dio();
  final Map<String, String> _baseHeader = {};
  PackageInfo? _packageInfo;

  factory ApiBase() {
    return _instance;
  }

  Future<void> init() async {
    await _createBaseHeader();
  }

  Future<void> _createBaseHeader() async {
    if (_packageInfo == null) {
      await _getDeviceInfo();
    }

    // String deviceInfo = Platform.isAndroid ? _androidDeviceInfo?.model ?? "" : _iosDeviceInfo?.model ?? "";
    // String platformVersion = Platform.isAndroid ? _androidDeviceInfo?.version.release ?? "" : _iosDeviceInfo?.systemVersion ?? "";

    // _baseHeader?.putIfAbsent(HEADER_DEVICE_INFO, () => deviceInfo);
    // _baseHeader?.putIfAbsent(HEADER_DEVICE_VERSION, () => platformVersion);
    // _baseHeader?.putIfAbsent(HEADER_APP_VERSION, () => _packageInfo?.version ?? "");
    // _baseHeader?.putIfAbsent(HEADER_PLATFORM, () => platform);

    String platform = Platform.isIOS ? "IOS" : "ANDROID";
    _baseHeader[HEADER_X_APP_OS] = platform;
    _baseHeader[HEADER_X_APP_VERSION] = _packageInfo?.version ?? "";
    // _baseHeader.putIfAbsent(HEADER_X_APP_OS, () => platform);
    // _baseHeader.putIfAbsent(HEADER_X_APP_VERSION, () => _packageInfo?.version ?? "");

    dio.options.baseUrl = 'http://3.37.70.222:9090';
    dio.options.contentType = "application/json";
    dio.options.headers = _baseHeader;
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
  }

  Future<Response> get(String path, {Map<String, dynamic>? query}) async {
    await init();
    try {
      var res = await dio.get(path, queryParameters: query);
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    await init();
    try {
      var res = await dio.post(path, data: data);
      return res;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> delete(String path, {Map<String, dynamic>? data}) async {
    await init();
    try {
      var res = await dio.delete(path, data: data);
      return res;
    } catch (e) {
      rethrow;
    }
  }

  void setAuthTokenHeader(String accessToken) {
    _baseHeader["Authorization"] = "Bearer $accessToken";
  }
}
