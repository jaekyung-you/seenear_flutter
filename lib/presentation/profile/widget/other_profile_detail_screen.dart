import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/empty_view.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/widget/review_cell.dart';
import 'package:seenear/presentation/my_page/widget/subscription_cell.dart';
import '../../../const/design_system/seenear_color.dart';
import '../../../const/enum/other_profile_tab_menu.dart';
import '../controller/other_profile_detail_controller.dart';

class OtherProfileDetailScreen extends GetView<OtherProfileDetailController> {
  const OtherProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          BaseHeader(title: '닉네임 님이 작성한 글'),
          SubscriptionCell(isFollowing: false, isMatched: false),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: profilePostList()),
        ],
      ),
    );
  }

  Widget profilePostList() {
    return Column(
      children: [
        TabBar(
          controller: controller.tabController,
          tabs: [
            for (String title in OtherProfileTabMenu.values.map((e) => e.title))
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
            controller: controller.tabController,
            children: [
              for (OtherProfileTabMenu menu in OtherProfileTabMenu.values) contentView(menu)
              // contentView(OtherProfileTabMenu.review),
            ],
          ),
        ),
      ],
    );
  }

  Widget contentView(OtherProfileTabMenu menu) {
    switch (menu) {
      case OtherProfileTabMenu.review:
        return controller.reviewList.isEmpty
            ? const Center(child: EmptyView(text: '작성한 글이 없어요'))
            : ListView.builder(
                itemCount: controller.reviewList.length,
                itemBuilder: (context, index) {
                  return ReviewCell(onTapItemCell: () {});
                },
              );

      case OtherProfileTabMenu.community:
        return controller.communityList.isEmpty
            ? const Center(child: EmptyView(text: '작성한 글이 없어요'))
            : ListView.builder(
                itemCount: controller.communityList.length,
                itemBuilder: (context, index) {
                  return ReviewCell(onTapItemCell: () {});
                },
              );
    }
  }
}
