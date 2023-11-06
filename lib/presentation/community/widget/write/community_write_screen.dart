import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../const/design_system/base_header.dart';
import '../../../base_widget/seenear_base_scaffold.dart';
import '../../controller/community_write_controller.dart';

class CommunityWriteScreen extends GetView<CommunityWriteController> {
  const CommunityWriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '글쓰기'),
          ),
          Divider(),
          Container(color: Colors.orange, width: 100, height: 100,),
          Container(color: Colors.pink, width: 300, height: 300,),
          // Expanded(
          //   child: SingleChildScrollView(
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         CommunityDetailHeader(),
          //         Divider(),
          //         CommunityDetailContent(),
          //         Divider(),
          //         CommunityDetailComment(),
          //       ],
          //     ),
          //   ),
          // ),
          // TextInputCell(
          //   textEditingController: controller.editingController,
          //   onTapComplete: controller.onTapInputComplete,
          // ),
        ],
      ),
    );
  }
}
