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

          if (controller.searchResultList[index].itemType == "CHAT") {
            return ReviewCell(onTapItemCell: () {});
          }

          if (controller.searchResultList[index].itemType == "HEADER") {
            return headerCell(title: controller.searchResultList[index].name);
          }

          if (controller.searchResultList[index].itemType == "FOOTER") {
            return footerCell(title: controller.searchResultList[index].name);
          }
        });
  }

  Widget headerCell({required String title}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      color: SeenearColor.grey5,
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: SeenearColor.grey60),
      ),
    );
  }

  Widget footerCell({required String title}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$title 검색 결과 더보기',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: SeenearColor.grey30),
          ),
          Image.asset(
            'assets/images/arrow_right.png',
            color: SeenearColor.grey30,
            width: 22,
          )
        ],
      ),
    );
  }
}
