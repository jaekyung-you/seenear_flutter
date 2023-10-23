import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/presentation/base_widget/circle_profile_image.dart';
import 'package:seenear/presentation/community/controller/community_main_controller.dart';

class CommunityCell extends GetView<CommunityMainController> {
  const CommunityCell({super.key});

  @override
  Widget build(BuildContext context) {
    const height = 246.0;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
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
          const SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(SeenearPath.COMMUNITY_DETAIL, arguments: {'id': 0});
            },
            child: Container(
              height: height,
              child: Column(
                children: [
                  Text(
                    'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 20,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: (height * 2) / 3, // 글 없으면 height 꽉 채워서
                    child: Image.network(
                      "https://picsum.photos/200/300",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
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
