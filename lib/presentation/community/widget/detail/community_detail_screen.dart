import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/community/controller/community_detail_controller.dart';
import 'package:seenear/presentation/community/widget/detail/community_detail_comment.dart';
import 'package:seenear/presentation/community/widget/detail/community_detail_content.dart';
import 'package:seenear/presentation/community/widget/detail/community_detail_header.dart';
import '../../../base_widget/seenear_base_scaffold.dart';
import '../../../base_widget/text_input_cell.dart';

class CommunityDetailScreen extends GetView<CommunityDetailController> {
  const CommunityDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '이모저모 이야기방'),
          ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommunityDetailHeader(),
                  Divider(),
                  CommunityDetailContent(),
                  Divider(),
                  CommunityDetailComment(),
                ],
              ),
            ),
          ),
          TextInputCell(
            textEditingController: controller.editingController,
            onTapComplete: controller.onTapInputComplete,
          ),
        ],
      ),
    );
  }
}
