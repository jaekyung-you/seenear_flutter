import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import '../../../../const/seenear_path.dart';
import '../../controller/help_desk_controller.dart';

class HelpDeskScreen extends GetView<HelpDeskController> {
  const HelpDeskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const BaseHeader(title: '고객센터'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/seenear_character_3.png',
                  width: 70,
                ),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  'assets/images/help_image.png',
                  height: 52,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '문의에 대한 답변은 영업일 기준 2~3일정도 소요되오니 조금만 기다려주세요!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: SeenearColor.grey50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            helpDeskCell(
              imageString: 'inquiry',
              title: '자주 묻는 질문',
              onTap: () {
                Get.toNamed(SeenearPath.MY_PAGE_HELP_DESK_FAQ);
              },
            ),
            helpDeskCell(
              imageString: 'review',
              title: '1:1 문의하기',
              onTap: () {
                Get.toNamed(SeenearPath.MY_PAGE_HELP_DESK_INQUIRY);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget helpDeskCell({required String imageString, required String title, required Function onTap}) {
    return InkWell(
      onTap: onTap(),
      child: SizedBox(
        width: Get.width,
        height: 60,
        child: Row(
          children: [
            Image.asset(
              'assets/images/$imageString.png',
              width: 28,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: SeenearColor.grey70),
            ),
            const Spacer(),
            Image.asset(
              'assets/images/arrow_right.png',
              width: 22,
              color: SeenearColor.grey30,
            ),
          ],
        ),
      ),
    );
  }
}
