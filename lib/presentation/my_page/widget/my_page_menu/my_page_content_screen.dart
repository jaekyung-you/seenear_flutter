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
import '../../../../data/remote/response/info_item_response.dart';

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
  void dispose() {
    controller.clearList(widget.menu);
    super.dispose();
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
            onTap: (value) {
              setState(() {
                controller.myPageTabController.index = value;
              });
            },
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
                marketContentView(widget.menu),
                festivalContentView(widget.menu),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget marketContentView(MyPageMenu menu) {
    // todo: menu에 따라 위에 헤더가 추가됨

    InfoItemResponse mock = InfoItemResponse(
      id: 608437709580928,
      itemId: 603851914389120,
      itemType: "MARKET",
      name: "MOCK MARKET",
      date: "DATE",
      imageSrc: "https://repill-dev.s3.ap-northeast-2.amazonaws.com/test/KakaoTalk_Photo_2023-07-30-18-44-36.jpeg",
      score: 5,
      reviewCount: 100,
    );

    switch (menu) {
      // 최대 10개까지만 해서 페이징 없음
      case MyPageMenu.recentView:
        return Obx(() {
          if (controller.myPageTabController.index == 0 && controller.recentMarketItemList.isEmpty) {
            return Center(child: EmptyView(text: MyPageMenu.recentView.contentEmptyTitle));
          }

          return ListView.builder(
            itemCount: controller.recentMarketItemList.length,
            itemBuilder: (context, index) {
              return MarketCell(
                item: controller.recentMarketItemList[index],
                onTapFavoriteIcon: () {},
                onTapDelete: () {
                  controller.onDeleteItem(
                    menu: MyPageMenu.recentView,
                    id: controller.recentMarketItemList[index].itemId,
                  );
                },
              );
            },
          );
        });
      case MyPageMenu.favorite:
        return Obx(() {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (controller.myPageTabController.index == 0 && controller.favoriteMarketItemList.isEmpty) {
            return Center(child: EmptyView(text: MyPageMenu.favorite.contentEmptyTitle));
          }

          return ListView.builder(
            itemCount: controller.favoriteMarketItemList.length,
            itemBuilder: (context, index) {
              return MarketCell(
                item: controller.favoriteMarketItemList[index],
                onTapFavoriteIcon: () {},
                onTapDelete: () {
                  controller.onDeleteItem(
                    menu: MyPageMenu.favorite,
                    id: controller.favoriteMarketItemList[index].itemId,
                  );
                },
              );
            },
          );
        });
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

  Widget festivalContentView(MyPageMenu menu) {
    // todo: menu에 따라 위에 헤더가 추가됨

    InfoItemResponse mock = InfoItemResponse(
      id: 608437709580928,
      itemId: 603851914389120,
      itemType: "MARKET",
      name: "MOCK MARKET",
      date: "DATE",
      imageSrc: "https://repill-dev.s3.ap-northeast-2.amazonaws.com/test/KakaoTalk_Photo_2023-07-30-18-44-36.jpeg",
      score: 5,
      reviewCount: 100,
    );

    switch (menu) {
      case MyPageMenu.recentView:
        return Obx(() {
          if (controller.myPageTabController.index == 1 && controller.recentFestivalItemList.isEmpty) {
            return Center(child: EmptyView(text: MyPageMenu.recentView.contentEmptyTitle));
          }

          return ListView.builder(
            itemCount: controller.recentFestivalItemList.length,
            itemBuilder: (context, index) {
              return FestivalCell(
                item: controller.recentFestivalItemList[index],
                onTapItemCell: () {},
                onTapFavoriteIcon: () {},
                onTapDelete: () {
                  controller.onDeleteItem(
                    menu: MyPageMenu.recentView,
                    id: controller.recentFestivalItemList[index].itemId,
                  );
                },
              );
            },
          );
        });
      case MyPageMenu.favorite:
        return Obx(() {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (controller.myPageTabController.index == 0 && controller.favoriteMarketItemList.isEmpty) {
            return Center(child: EmptyView(text: MyPageMenu.favorite.contentEmptyTitle));
          }
          return ListView.builder(
            itemCount: controller.favoriteFestivalItemList.length,
            itemBuilder: (context, index) {
              return FestivalCell(
                item: controller.favoriteFestivalItemList[index],
                onTapItemCell: () {},
                onTapFavoriteIcon: () {},
                onTapDelete: () {
                  controller.onDeleteItem(
                    menu: MyPageMenu.favorite,
                    id: controller.favoriteFestivalItemList[index].itemId,
                  );
                },
              );
            },
          );
        });
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
