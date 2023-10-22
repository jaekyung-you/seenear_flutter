import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

import '../../../const/design_system/base_header.dart';
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
          const BaseHeader(title: '이모저모 이야기방'),
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
              Expanded(
                  child: BaseButton(
                buttonText: '전체 글',
                onPressed: () {},
                height: 44,
              )),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                  child: BaseButton(
                buttonText: '구독 글',
                onPressed: () {},
                height: 44,
              )),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                  child: BaseButton(
                buttonText: '내 글',
                onPressed: () {},
                height: 44,
              )),
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
                  Text(
                    '최신순',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: SeenearColor.grey60, // or blue80
                    ),
                  ),
                  Container(
                    height: 21,
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: VerticalDivider(color: SeenearColor.grey20, width: 5),
                  ),
                  Text(
                    '공감순',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: SeenearColor.grey60,
                    ),
                  ),
                  Container(
                    height: 21,
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: VerticalDivider(color: SeenearColor.grey20, width: 5),
                  ),
                  Text(
                    '댓글순',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: SeenearColor.grey60,
                    ),
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
