import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:share_plus/share_plus.dart';
import '../../../const/enum/home_menu.dart';
import '../../../const/seenear_path.dart';
import '../../../data/remote/api/get_health_check.dart';
import '../../../data/remote/response/health_check_response.dart';

class HomeController extends GetxController {
  List<HomeMenu> homeMenus = HomeMenu.values;
  bool isMember = false;
  AndroidDeviceInfo? _androidDeviceInfo;
  IosDeviceInfo? _iosDeviceInfo;

  // usecase
  GetHealthCheck checkHealth = GetHealthCheck();

  @override
  void onInit() {
    super.onInit();
    _requestHealthCheck();
  }

  Future<void> _getDeviceInfo() async {
    if (Platform.isAndroid) {
      _androidDeviceInfo = await DeviceInfoPlugin().androidInfo;
    } else if (Platform.isIOS) {
      _iosDeviceInfo = await DeviceInfoPlugin().iosInfo;
    }
  }

  Future<void> _requestHealthCheck() async {
    await _getDeviceInfo();
    String deviceId = Platform.isAndroid ? _androidDeviceInfo?.id ?? "" : _iosDeviceInfo?.identifierForVendor ?? ""; // device uuid
    HealthCheckResponse res = await checkHealth(deviceId: deviceId);
    isMember = res.member;
    ApiBase().setAuthTokenHeader(res.accessToken);
  }

  void onTapMainCell(HomeMenu menu) {
    switch (menu) {
      case HomeMenu.market:
        Get.toNamed(SeenearPath.MARKET, arguments: {'type': 'market'});
        break;
      case HomeMenu.community:
        // 커뮤니티 진입, 화면 미기획
        Share.share('check out my website https://example.com');
        break;
      case HomeMenu.myInfo:
        // Get.toNamed(isLogined ? SeenearPath.MY_PAGE : SeenearPath.LOGIN);
        Get.toNamed(SeenearPath.LOGIN);
        // Get.toNamed(SeenearPath.MY_PAGE);
        break;
      case HomeMenu.festival:
        Get.toNamed(SeenearPath.FESTIVAl, arguments: {'type': 'festival'});
        break;
    }
  }
}
