import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:styled_text/styled_text.dart';
import '../../../const/design_system/seenear_color.dart';
import '../controller/detail_review_controller.dart';

class DetailReviewScreen extends GetView<DetailReviewController> {
  const DetailReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? profileImageSrc;

    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const BaseHeader(title: '방문자 후기'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        children: [
                          profileImageSrc == null
                              ? Image.asset(
                                  'assets/images/default_profile.png',
                                  width: 42,
                                )
                              : CircleAvatar(
                                  radius: 21,
                                  backgroundImage: NetworkImage(
                                    profileImageSrc!,
                                  ),
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
                          Container(
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
                                  style: TextStyle(color: SeenearColor.blue60, fontSize: 14, fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          )
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
                    commentListView(),
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
            )
          ],
        )
      ],
    );
  }

  Widget commentListView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText(
          text: '댓글<s>(2)</s>',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: SeenearColor.grey50),
          tags: {
            's': StyledTextTag(
              style: const TextStyle(fontSize: 12),
            ),
          },
        ),
        const SizedBox(
          height: 16,
        ),
        commentCell(isReplied: false),
        commentCell(isReplied: true),
        commentCell(isReplied: false),
        commentCell(isReplied: false),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget commentCell({required bool isReplied}) {
    String? profileImageSrc;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isReplied)
            const SizedBox(
              width: 32,
            ),
          profileImageSrc == null
              ? Image.asset(
                  'assets/images/default_profile.png',
                  width: 36,
                )
              : CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    profileImageSrc!,
                  ),
                ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '오순도순세가족',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '답글 달기',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: SeenearColor.blue60,
                      ),
                    )
                  ],
                ),
                Text(
                  '따님이랑 함께하는 모습 너무 보기 좋아요 따님이랑 함께하는 모습 너무 보기 좋아요 함께하는 모습 너무 보기 좋아요',
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '2023-00-00 00:00:00',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: SeenearColor.grey50,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
