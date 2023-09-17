import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/empty_view.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_menu_controller.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/festival_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/market_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/review_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/subscription_cell.dart';
import 'package:styled_text/styled_text.dart';
import '../../../../const/design_system/seenear_color.dart';

class MyPageContentScreen extends StatefulWidget {
  final MyPageMenu menu;

  const MyPageContentScreen({super.key, required this.menu});

  @override
  State<MyPageContentScreen> createState() => _MyPageContentScreenState();
}

class _MyPageContentScreenState extends State<MyPageContentScreen> {
  final controller = Get.find<MyPageMenuController>();

  @override
  void initState() {
    super.initState();
    controller.requestListByMenu(widget.menu);
  }

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(padding: const EdgeInsets.symmetric(horizontal: 16), child: BaseHeader(title: widget.menu.title)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: StyledText(
              text: widget.menu.contentTitle,
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
          if (widget.menu.contentDescription != null)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                widget.menu.contentDescription!,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: SeenearColor.grey50),
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          TabBar(
            controller: controller.myPageTabController,
            tabs: [
              for (String title in widget.menu.contentTabTitle)
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
                contentView(widget.menu),
                Center(
                  child: EmptyView(text: widget.menu.contentEmptyTitle),
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
    switch (menu) {
      case MyPageMenu.recentView:
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return controller.myPageTabController.index == 0
                ? MarketCell(onTapItemCell: () {}, onTapFavoriteIcon: () {})
                : FestivalCell(onTapItemCell: () {}, onTapFavoriteIcon: () {});
          },
        );
      case MyPageMenu.favorite:
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return controller.myPageTabController.index == 0
                ? MarketCell(onTapItemCell: () {}, onTapFavoriteIcon: () {})
                : FestivalCell(onTapItemCell: () {}, onTapFavoriteIcon: () {});
          },
        );
      case MyPageMenu.review:
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ReviewCell(
              onTapItemCell: () {},
            );
          },
        );
      case MyPageMenu.subscription:
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return SubscriptionCell(
              isFollowing: false,
              isMatched: true,
            );
          },
        );
    }
  }
}
