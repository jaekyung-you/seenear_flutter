import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import '../../../const/design_system/base_header.dart';
import '../../../const/enum/community_filter_type.dart';
import '../../../const/enum/community_tab_type.dart';
import '../../base_widget/seenear_base_scaffold.dart';
import '../controller/community_main_controller.dart';
import 'community_cell.dart';

/// 전체 글, 구독 글, 내 글 있는 페이지
class CommunityMainScreen extends GetView<CommunityMainController> {
  const CommunityMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const BaseHeader(title: '이모저모 이야기방'),
          ),
          communityHeader(),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CommunityCell();
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 20,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget communityHeader() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
          child: Row(
            children: [
              for (CommunityTabType tab in CommunityTabType.values)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: Obx(() {
                      return BaseButton(
                        buttonText: tab.title,
                        bgColor: controller.selectedTab.value == tab ? SeenearColor.blue80 : SeenearColor.blue10,
                        fgColor: controller.selectedTab.value == tab ? Colors.white : SeenearColor.blue80,
                        onPressed: () {
                          controller.selectedTab.value = tab;
                        },
                        height: 44,
                      );
                    }),
                  ),
                ),
            ],
          ),
        ),
        Container(
          height: 48,
          color: SeenearColor.grey5,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                '총 100개',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: SeenearColor.grey60,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  for (CommunityFilterType filter in CommunityFilterType.values)
                    Row(
                      children: [
                        Obx(() {
                          return InkWell(
                            onTap: () {
                              controller.selectedFilter.value = filter;
                            },
                            child: Text(
                              filter.title,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: controller.selectedFilter.value == filter ? SeenearColor.blue80 : SeenearColor.grey60, // or blue80
                              ),
                            ),
                          );
                        }),
                        if (filter == CommunityFilterType.recent || filter == CommunityFilterType.like)
                          Container(
                            height: 16,
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: VerticalDivider(color: SeenearColor.grey20, width: 5),
                          ),
                      ],
                    ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
