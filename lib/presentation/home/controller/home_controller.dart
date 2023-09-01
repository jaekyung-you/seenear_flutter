import 'package:get/get.dart';

import '../../../const/enum/home_menu.dart';
import '../../../data/remote/api/api_base.dart';

class HomeController extends GetxController {
  List<HomeMenu> homeMenus = HomeMenu.values;

  @override
  void onInit() {
    super.onInit();
    getMainList();
  }

  Future<void> getMainList() async {
    Response res = await ApiBase().get('/health-check');
    print('res: $res');
  }
}