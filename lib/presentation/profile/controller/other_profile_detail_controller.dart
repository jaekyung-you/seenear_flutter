import 'package:get/get.dart';

class OtherProfileDetailController extends GetxController {
  int userId = 0;

  @override
  void onInit() {
    super.onInit();
    userId = Get.arguments['userId'];
    print("===userId: $userId");
  }
}