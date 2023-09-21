import 'package:get/get.dart';

import '../widget/my_setting_menu/notice_detail_screen.dart';

class MyPageNoticeController extends GetxController {
  /// property
  // noticeList
  // noticeDetail

  /// usecase
  // getNoticeList
  // getNoticeDetail

  @override
  void onInit() {
    super.onInit();
    _requestNoticeList();
  }

  Future<void> _requestNoticeList() async {
    // getNoticeList
  }

  Future<void> onTapNotice({required id}) async {
    // getNoticeDetail

    Get.to(() => const NoticeDetailScreen());
  }
}