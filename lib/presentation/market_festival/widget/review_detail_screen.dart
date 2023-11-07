import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import '../../../const/design_system/seenear_color.dart';
import '../../base_widget/circle_profile_image.dart';
import '../../base_widget/comment_cell.dart';
import '../controller/review_detail_controller.dart';

class ReviewDetailScreen extends GetView<ReviewDetailController> {
  const ReviewDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? profileImageSrc;

    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            BaseHeader(title: controller.isMine ? '리뷰 관리' : '방문자 후기'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: [
                          CircleProfileImage(
                            imageUrl: profileImageSrc,
                            width: 42,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '핑크빛장미',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    reviewContentView(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(
                        height: 0.5,
                      ),
                    ),
                    CommentListView(
                      commentCount: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reviewContentView() {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: (Get.width - 32) / 1.3, autoPlay: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(width: Get.width - 32, color: SeenearColor.blue10);
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 19),
              child: Container(
                width: 42,
                height: 24,
                decoration: BoxDecoration(
                  color: SeenearColor.textColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    '1/33',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/star.png',
              width: 26,
            ),
            Text(
              '4.3',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Text(
              '2023-00-00',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: SeenearColor.grey50,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          '어제 딸이랑 같이 갓다왔는데, 볼거리도 많고 재밌었어요. 가시면 훈이네 강정에서 파는 닭강정도 정말 맛있게 먹었네요.',
          textAlign: TextAlign.left,
          maxLines: null,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
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
                    '공감',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: SeenearColor.grey50),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
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
                    '댓글',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: SeenearColor.grey50),
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: SeenearColor.grey50,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            if (controller.isMine)
              Expanded(
                child: Row(
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/images/write.png',
                      color: SeenearColor.grey50,
                      width: 14,
                    ),
                    Text(
                      '수정/삭제',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: SeenearColor.grey50),
                    ),
                    const Spacer(),
                  ],
                ),
              )
          ],
        )
      ],
    );
  }
}
