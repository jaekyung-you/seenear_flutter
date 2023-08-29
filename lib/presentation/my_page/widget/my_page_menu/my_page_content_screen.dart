import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/empty_view.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_menu_controller.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/subscription_cell.dart';
import 'package:styled_text/styled_text.dart';
import '../../../../const/design_system/seenear_color.dart';

class MyPageContentScreen extends GetView<MyPageMenuController> {
  final MyPageMenu menu;

  const MyPageContentScreen({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(padding: const EdgeInsets.symmetric(horizontal: 16), child: BaseHeader(title: menu.title)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: StyledText(
              text: menu.contentTitle,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21, color: SeenearColor.grey60),
              tags: {
                'b': StyledTextTag(
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21, color: SeenearColor.grey60),
                ),
              },
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          if (menu.contentDescription != null)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                menu.contentDescription!,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: SeenearColor.grey50),
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          TabBar(
            controller: controller.myPageTabController,
            tabs: [
              for (String title in menu.contentTabTitle)
                SizedBox(
                  width: Get.width / 2,
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
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
    // todo: menu에 따라 위에 헤더가 추가됨

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return SubscriptionCell(isFollowing: false, isMatched: true,);
      },
    );
  }
}
