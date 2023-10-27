import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:seenear/data/local/member.dart';
import 'package:seenear/data/remote/api/api_base.dart';
import 'package:seenear/data/remote/api/main/get_main_list.dart';
import 'package:seenear/data/remote/response/main_category_response.dart';
import 'package:seenear/data/remote/response/main_response.dart';
import '../../../const/enum/home_menu.dart';
import '../../../const/seenear_path.dart';
import '../../../data/remote/api/main/get_health_check.dart';
import '../../../data/remote/response/health_check_response.dart';

class HomeController extends GetxController {
  List<HomeMenu> homeMenus = HomeMenu.values;
  bool isMember = false;
  AndroidDeviceInfo? _androidDeviceInfo;
  IosDeviceInfo? _iosDeviceInfo;
  RxList<MainCategoryResponse> categoryList = <MainCategoryResponse>[].obs;

  // usecase
  GetHealthCheck checkHealth = GetHealthCheck();
  GetMainList getMainList = GetMainList();

  @override
  void onInit() async {
    super.onInit();
    await _requestMainList();
    _requestHealthCheck();
  }

  Future<void> _requestMainList() async {
    MainResponse res = await getMainList();
    categoryList.value = res.categoryList;
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
    Member().isMember = res.member;
    // ApiBase 헤더에 jwt 토큰 저장
    if (res.memberView != null) {
      Member().setMember(res.memberView!);
    }
    ApiBase().setAuthTokenHeader(res.accessToken);
  }

  void onTapMainCell(HomeMenu menu) {
    switch (menu) {
      case HomeMenu.market:
        Get.toNamed(SeenearPath.MARKET, arguments: {'type': 'market'});
        break;
      case HomeMenu.community:
        // Share.share('check out my website https://example.com');
        Get.toNamed(SeenearPath.COMMUNITY);
        // Get.toNamed(SeenearPath.SIGN_UP);
        break;
      case HomeMenu.myInfo:
        // Get.toNamed(SeenearPath.SIGN_UP);
        Get.toNamed(Member().isMember ? SeenearPath.MY_PAGE : SeenearPath.LOGIN);
        break;
      case HomeMenu.festival:
        Get.toNamed(SeenearPath.FESTIVAl, arguments: {'type': 'festival'});
        break;
    }
  }
}
