import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import '../../../base_widget/circle_profile_image.dart';
import '../../controller/community_detail_controller.dart';

class CommunityDetailHeader extends GetView<CommunityDetailController> {
  const CommunityDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '전체 글',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: SeenearColor.blue60,
              fontSize: 16,
            ),
          ),
          Text(
            '귀여운 짱구 보시고, 귀여운 하루 되셔요 ^_^',
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              CircleProfileImage(imageUrl: null, width: 42),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '핑크빛 장미',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: SeenearColor.grey70,
                      ),
                    ),
                    Text(
                      '2023-00-00 00:00:00',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: SeenearColor.grey50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Obx(() {
                return controller.isFollowing.value
                    ? InkWell(
                        onTap: () {
                          controller.onTapUnfollow(memberId: -1, memberName: '상어가좋아좋아');
                        },
                        child: Container(
                          width: 86,
                          height: 24,
                          decoration: BoxDecoration(
                            color: SeenearColor.blue10,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Center(
                            child: Text(
                              '구독중',
                              style: TextStyle(
                                color: SeenearColor.blue80,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          controller.onTapFollow(memberId: -1, memberName: '상어가좋아좋아');
                        },
                        child: Container(
                          width: 86,
                          height: 24,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: SeenearColor.blue60,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/add.png',
                                color: SeenearColor.blue60,
                                width: 14,
                              ),
                              Text(
                                '구독하기',
                                style: TextStyle(
                                  color: SeenearColor.blue60,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
              })
            ],
          ),
        ],
      ),
    );
  }
}
