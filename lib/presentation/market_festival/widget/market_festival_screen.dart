import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/market_festival/widget/filter_widget.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/festival_cell.dart';
import 'package:seenear/presentation/my_page/widget/my_page_menu/market_cell.dart';

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
            BaseHeader(title: isFestival ? '축제/행사' : '전통시장'),
            Expanded(child: Container(color: Colors.blue,),),
            // FilterWidget(),
            // contentView(isFestival),
          ],
        ),
      ),
    );
  }

  Widget contentView(bool isFestival) {
    return isFestival
        ? ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return FestivalCell(
                onTapItemCell: () {},
                onTapFavoriteIcon: () {},
              );
            })
        : ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return MarketCell(onTapItemCell: () {}, onTapFavoriteIcon: () {});
            });
  }
}
