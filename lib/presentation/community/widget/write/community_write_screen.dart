import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '글쓰기'),
          ),
          const Divider(),
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.pink,
                  width: 300,
                  height: 300,
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            height: 110,
            child: Row(
              children: [
                const SizedBox(width: 16,),
                Expanded(child: BaseButton(buttonText: '사진/동영상 첨부', onPressed: () {})),
                const SizedBox(width: 16,),
                Expanded(child: BaseButton(buttonText: '등록', onPressed: () {})),
                const SizedBox(width: 16,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
