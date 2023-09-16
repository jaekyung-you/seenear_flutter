import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';

import '../../../const/design_system/seenear_color.dart';
import '../../../const/design_system/select_text_item_cell.dart';
import '../../../const/enum/home_menu.dart';
import '../controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Image.asset(
            'assets/images/seenear_logo.png',
            height: 24,
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text('음력 9월 9일',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: SeenearColor.blue60)),
                const SizedBox(
                  height: 4,
                ),
                Text('오늘은 10월 23일 목요일',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 23,
                        color: SeenearColor.grey70)),
                const SizedBox(
                  height: 4,
                ),
                Text('원하시는 서비스를 선택해주세요!',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: SeenearColor.grey50)),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: controller.categoryList.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                mainAxisSpacing: 20, //수평 Padding
                crossAxisSpacing: 20, //수직 Padding
              ),
              itemBuilder: (context, index) {
                bool isNotOpened = controller.categoryList[index].isActive == false;
                Color bgColor =
                    isNotOpened ? SeenearColor.grey10 : SeenearColor.blue10;
                Color fgColor =
                    isNotOpened ? SeenearColor.grey30 : SeenearColor.blue100;
                return SelectTextItemCell(
                  text: controller.categoryList[index].mainName,
                  borderRadius: 16,
                  badgeText: isNotOpened ? '오픈예정' : null,
                  fontSize: 27,
                  bgColor: bgColor,
                  fgColor: fgColor,
                  onTap: () {
                    if (isNotOpened) return;
                    controller.onTapMainCell(HomeMenu.convert(controller.categoryList[index].mainName));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
