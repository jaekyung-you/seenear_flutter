import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';

import '../../../../const/design_system/base_header.dart';
import '../../../../const/design_system/seenear_color.dart';
import '../../../base_widget/seenear_base_scaffold.dart';
import '../../controller/my_page_notice_controller.dart';

class NoticeDetailScreen extends GetView<MyPageNoticeController> {
  const NoticeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: BaseHeader(title: '공지사항'),
          ),
          const Divider(),
          headerView(),
          const Divider(),
          Expanded(
            child: contentView(),
          ),
          const Divider(),
          buttonView(),
        ],
      ),
    );
  }

  Widget headerView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '[업데이트] 앱 업데이트 안내',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: SeenearColor.grey70,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '2023-05-03',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: SeenearColor.grey50,
            ),
          )
        ],
      ),
    );
  }

  Widget contentView() {
    return Text('안녕하세요~~~~~');
  }

  Widget buttonView() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BaseButton(
        buttonText: '목록으로',
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
