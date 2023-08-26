import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/empty_view.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_controller.dart';
import 'package:styled_text/styled_text.dart';

import '../../../const/design_system/seenear_color.dart';

class MyPageContentScreen extends GetView<MyPageController> {
  final MyPageMenu menu;

  const MyPageContentScreen({super.key, required this.menu});

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
            labelColor: SeenearColor.blue80,
            unselectedLabelColor: SeenearColor.grey50,
          ),
          Expanded(
            child: TabBarView(
              controller: controller.myPageTabController,
              children: [
                contentView(menu),
                Center(
                  child: EmptyView(text: menu.contentEmptyTitle),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget contentView(MyPageMenu menu) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        // todo: menu에 따라서 cell 타입 다르게
        return SizedBox(height: 100, child: Text('index: $index'));
      },
    );
  }
}
