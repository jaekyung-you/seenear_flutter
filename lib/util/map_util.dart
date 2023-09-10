import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const/enum/map_type.dart';
import '../domain/util/snack_bar_manager.dart';

/// 카카오맵, 네이버맵, 티맵 길찾기 안내
class MapUtil {
  MapUtil._privateConstructor();

  static final MapUtil _instance = MapUtil._privateConstructor();

  factory MapUtil() {
    return _instance;
  }

  // todo: 서버에서 위경도를 받아와야 가능..
  Future<void> openNavigation(
    MapType mapType,
    String? destination,
    double latitude,
    double longitude,
  ) async {
    String url = '';
    switch (mapType) {
      case MapType.kakaoMap:
        url = '${MapType.kakaoMap.url}ep=$latitude$longitude&by=CAR';
      case MapType.tMap:
        url = '${MapType.tMap.url}rGoName=$destination&rGoX=$longitude&rGoY=$latitude';
      case MapType.naverMap:
        url = '${MapType.naverMap.url}dlat=$latitude&dlng=$longitude&appname=com.example.seenear';
    }

    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      // 설치되어있지 않다면, 해당 앱의 스토어로 이동
      _openStore(mapType);
    }
  }

  Future<void> _openStore(MapType mapType) async {
    Uri? uri;

    if (GetPlatform.isIOS) {
      uri = Uri.parse(mapType.appstoreUrl);
    }

    if (GetPlatform.isAndroid) {
      uri = Uri.parse(mapType.playstoreUrl);
    }

    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      SnackBarManager().showSnackBar(title: '해당 앱을 열 수 없습니다.');
      throw Exception('Could not launch $uri');
    }
  }
}
