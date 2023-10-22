import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/circle_profile_image.dart';

class CommunityCell extends StatelessWidget {
  const CommunityCell({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 16,
          ),
          Container(
            color: Colors.pink,
            height: 100,
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
          ),
        ],
      ),
    );
  }
}
