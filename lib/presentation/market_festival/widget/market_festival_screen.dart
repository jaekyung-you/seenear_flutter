import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/market_festival/widget/filter_widget.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/festival_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/market_cell.dart';

import '../../../const/design_system/seenear_color.dart';
import '../../../data/remote/response/info_item_response.dart';
import '../controller/market_festival_controller.dart';

class MarketFestivalScreen extends GetView<MarketFestivalController> {
  const MarketFestivalScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BaseHeader(title: controller.isMarket ? '전통시장' : '축제/행사'),
            ),
            const SizedBox(
              height: 10,
            ),
            const FilterWidget(),
            Expanded(
              child: contentView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget contentView() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: const Color(0xFFF2F4F6),
          height: 48,
          child: Obx(() {
            return Row(
              children: [
                Text(
                  '총 ${controller.totalCount}개',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: SeenearColor.grey60,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    controller.sort.value = '거리순';
                  },
                  child: Text(
                    '거리순',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: controller.sort.value == '거리순' ? SeenearColor.blue80 : SeenearColor.grey60,
                    ),
                  ),
                ),
                Text(
                  ' | ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: SeenearColor.grey40,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.sort.value = '인기순';
                  },
                  child: Text(
                    '인기순',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: controller.sort.value == '인기순' ? SeenearColor.blue80 : SeenearColor.grey60,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
        Expanded(
          child: controller.isMarket
              ? controller.marketList.isEmpty
                  ? emptyView()
                  : ListView.builder(
                      itemCount: controller.marketList.length,
                      itemBuilder: (context, index) {
                        return MarketCell(
                            item: InfoItemResponse(
                              id: 608437709580928,
                              itemId: 603851914389120,
                              itemType: "MARKET",
                              name: "MOCK MARKET",
                              date: "DATE",
                              imageSrc: "https://repill-dev.s3.ap-northeast-2.amazonaws.com/test/KakaoTalk_Photo_2023-07-30-18-44-36.jpeg",
                              score: 5,
                              reviewCount: 100,
                            ),
                            onTapItemCell: () {},
                            onTapFavoriteIcon: () {});
                      })
              : controller.festivalList.isEmpty
                  ? emptyView()
                  : ListView.builder(
                      itemCount: controller.festivalList.length,
                      itemBuilder: (context, index) {
                        return FestivalCell(
                          item: InfoItemResponse(
                            id: 608437709580928,
                            itemId: 603851914389120,
                            itemType: "MARKET",
                            name: "MOCK MARKET",
                            date: "DATE",
                            imageSrc: "https://repill-dev.s3.ap-northeast-2.amazonaws.com/test/KakaoTalk_Photo_2023-07-30-18-44-36.jpeg",
                            score: 5,
                            reviewCount: 100,
                          ),
                          onTapItemCell: () {},
                          onTapFavoriteIcon: () {},
                        );
                      },
                    ),
        ),
      ],
    );
  }

  Widget emptyView() {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Image.asset(
          'assets/images/seenear_character_4.png',
          width: 70,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          controller.isMarket ? '선택하신 지역과 요일에\n열리는 장이 없어요' : '선택하신 지역과 시기에는 진행되는\n축제나 행사가 없어요',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: SeenearColor.grey20,
          ),
        ),
      ],
    );
  }
}
