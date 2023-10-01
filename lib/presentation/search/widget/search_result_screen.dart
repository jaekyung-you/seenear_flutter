import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/festival_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/market_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/review_cell.dart';
import 'package:seenear/presentation/search/controller/search_controller.dart';

class SearchResultScreen extends GetView<SearchScreenController> {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.searchResultList.length,
        itemBuilder: (context, index) {
          if (controller.searchResultList[index].itemType == "MARKET") {
            return MarketCell(item: controller.searchResultList[index], onTapFavoriteIcon: () {}, onTapDelete: () {});
          }

          if (controller.searchResultList[index].itemType == "FESTIVAL") {
            return FestivalCell(
                item: controller.searchResultList[index], onTapItemCell: () {}, onTapFavoriteIcon: () {}, onTapDelete: () {});
          }

          // chat
          if (controller.searchResultList[index].itemType == "MARKET") {
            return ReviewCell(onTapItemCell: () {});
          }

          if (controller.searchResultList[index].itemType == "HEADER") {
            return headerView(title: controller.searchResultList[index].name);
          }
        });
  }

  Widget headerView({required String title}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      color: SeenearColor.grey5,
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: SeenearColor.grey60),
      ),
    );
  }
}
