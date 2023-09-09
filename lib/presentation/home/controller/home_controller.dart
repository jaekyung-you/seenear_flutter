import 'package:get/get.dart';
import 'package:seenear/util/image_picker.dart';
import 'package:share_plus/share_plus.dart';
import '../../../const/enum/home_menu.dart';
import '../../../const/seenear_path.dart';
import '../../../data/remote/api/get_health_check.dart';

class HomeController extends GetxController {
  List<HomeMenu> homeMenus = HomeMenu.values;
  bool isLogined = false;

  // usecase
  GetHealthCheck checkHealth = GetHealthCheck();

  void onTapMainCell(HomeMenu menu) {
    switch (menu) {
      case HomeMenu.market:
        Get.toNamed(SeenearPath.MARKET, arguments: {'type': 'market'});
        break;
      case HomeMenu.community:
        // 커뮤니티 진입, 화면 미기획
      ImagePicker().showPermissionPopup();
      // Share.share('check out my website https://example.com');
      
        break;
      case HomeMenu.myInfo:
        // Get.toNamed(isLogined ? SeenearPath.MY_PAGE : SeenearPath.LOGIN);
        Get.toNamed(SeenearPath.MY_PAGE);
        break;
      case HomeMenu.festival:
        Get.toNamed(SeenearPath.FESTIVAl, arguments: {'type': 'festival'});
        break;
    }
  }
}
