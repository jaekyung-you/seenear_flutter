import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/design_system/base_header.dart';
import '../../base_widget/seenear_base_scaffold.dart';
import '../controller/community_main_controller.dart';

/// 전체 글, 구독 글, 내 글 있는 페이지
class CommunityMainScreen extends GetView<CommunityMainController> {
  const CommunityMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          const BaseHeader(title: '이모저모 이야기방'),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.purple,
                  height: 100,
                );
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
}
