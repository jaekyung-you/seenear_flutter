import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_controller.dart';
import 'package:styled_text/styled_text.dart';

import '../../../const/design_system/seenear_color.dart';

class MyPageCommonContentScreen extends GetView<MyPageController> {
  final MyPageMenu menu;

  const MyPageCommonContentScreen({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          BaseHeader(title: menu.title),
          const SizedBox(
            height: 20,
          ),
          StyledText(
            text: menu.contentTitle,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21, color: SeenearColor.grey60),
            tags: {
              'b': StyledTextTag(
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21, color: SeenearColor.grey60),
              ),
            },
          ),
          const SizedBox(
            height: 6,
          ),
          if (menu.contentDescription != null)
            Text(
              menu.contentDescription!,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: SeenearColor.grey50),
            ),
          const SizedBox(
            height: 10,
          ),
          TabBar(
            controller: controller.myPageTabController,
            tabs: [
              for (String title in menu.contentTabTitle)
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
            ],
            indicatorColor: SeenearColor.blue60,
            indicatorWeight: 2,
            //선택된 Tab 에 스타일 적용 시 사용
            labelColor: SeenearColor.blue80,
            //선택된 Tab 의 label 색상
            unselectedLabelColor: SeenearColor.grey50, //선택되지 않은 Tab 의 label 색상
          ),
          TabBarView(
            controller: controller.myPageTabController,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
