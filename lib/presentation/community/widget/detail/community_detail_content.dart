import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          )
        ],
      ),
    );
  }
}
