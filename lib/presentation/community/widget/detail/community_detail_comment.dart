import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base_widget/comment_cell.dart';
import '../../controller/community_detail_controller.dart';

class CommunityDetailComment extends GetView<CommunityDetailController> {
  const CommunityDetailComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CommentListView(commentCount: 4),
    );
  }
}
