import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/market_festival/widget/filter_widget.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/festival_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/market_cell.dart';

import '../../../const/design_system/seenear_color.dart';
import '../controller/market_festival_controller.dart';

class MarketFestivalScreen extends GetView<MarketFestivalController> {
  final bool isFestival;

  const MarketFestivalScreen({super.key, required this.isFestival});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BaseHeader(title: isFestival ? '축제/행사' : '전통시장'),
            ),
            FilterWidget(),
            // Expanded(
            //   child: Container(
            //     color: Colors.blue,
            //   ),
            // ),
            // FilterWidget(),
            Expanded(child: contentView(isFestival)),
          ],
        ),
      ),
    );
  }

  Widget contentView(bool isFestival) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: const Color(0xFFF2F4F6),
          height: 48,
          child: Row(
            children: [
              Text(
                '총 100개',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: SeenearColor.grey60,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  '거리순',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: SeenearColor.blue80,
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
                onTap: () {},
                child: Text(
                  '인기순',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: SeenearColor.grey60,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: emptyView())
        // isFestival
        //     ? ListView.builder(
        //         itemCount: 10,
        //         itemBuilder: (context, index) {
        //           return FestivalCell(
        //             onTapItemCell: () {},
        //             onTapFavoriteIcon: () {},
        //           );
        //         })
        //     : ListView.builder(
        //         itemCount: 10,
        //         itemBuilder: (context, index) {
        //           return MarketCell(onTapItemCell: () {}, onTapFavoriteIcon: () {});
        //         })
      ],
    );
  }

  Widget emptyView() {
    return Column(
      children: [
        const SizedBox(height: 80,),
        Image.asset(
          'assets/images/seenear_character_4.png',
          width: 70,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '선택하신 지역과 요일에\n열리는 장이 없어요',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: SeenearColor.grey30,
          ),
        ),
      ],
    );
  }
}
