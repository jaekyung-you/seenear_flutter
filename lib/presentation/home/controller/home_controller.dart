import 'package:get/get.dart';
import '../../../const/enum/home_menu.dart';
import '../../../const/seenear_path.dart';
import '../../../data/remote/api/health/health_api.dart';

class HomeController extends GetxController {
  List<HomeMenu> homeMenus = HomeMenu.values;
  bool isLogined = false;

  // usecase
  CheckHealth checkHealth = CheckHealth();

  @override
  void onInit() {
    super.onInit();
    getMainList();
  }

  Future<void> getMainList() async {
    checkHealth();
  }

  void onTapMainCell(HomeMenu menu) {
    switch (menu) {
      case HomeMenu.market:
        Get.toNamed(SeenearPath.MARKET);
        break;
      case HomeMenu.community:
        // 커뮤니티 진입, 화면 미기획
        break;
      case HomeMenu.myInfo:
        Get.toNamed(isLogined ? SeenearPath.MY_PAGE : SeenearPath.LOGIN);
        break;
      case HomeMenu.festival:
        Get.toNamed(SeenearPath.FESTIVAl);
        break;
    }
  }
}
