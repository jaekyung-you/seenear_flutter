import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import '../../../../const/design_system/seenear_color.dart';
import '../../controller/my_page_notice_controller.dart';

class NoticeScreen extends GetView<MyPageNoticeController> {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const BaseHeader(title: '공지사항'),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return noticeCell(id: 1);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget noticeCell({required int id}) {
    return InkWell(
      onTap: () {
        controller.onTapNotice(id: id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: SizedBox(
          width: Get.width,
          height: 67,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '[업데이트] 업데이트로 인한 앱 일시중지 안내 업데이트로 인한 앱 일시중지 안내',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: SeenearColor.grey70,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '2023-05-03',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: SeenearColor.grey50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6,),
              Image.asset(
                'assets/images/arrow_right.png',
                height: 22,
                color: SeenearColor.grey30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
