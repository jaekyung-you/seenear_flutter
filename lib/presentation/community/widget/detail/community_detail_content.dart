import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../const/design_system/seenear_color.dart';
import '../../controller/community_detail_controller.dart';

class CommunityDetailContent extends GetView<CommunityDetailController> {
  const CommunityDetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.pink,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '언제나 귀여운 짱구!!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/images/heart.png',
                      color: SeenearColor.grey50,
                      width: 14,
                    ),
                    Text(
                      '공감 10',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: SeenearColor.grey50,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/images/reply.png',
                      color: SeenearColor.grey50,
                      width: 14,
                    ),
                    Text(
                      '댓글 2',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: SeenearColor.grey50,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
