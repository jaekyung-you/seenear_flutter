import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import '../../const/design_system/seenear_color.dart';
import 'circle_profile_image.dart';

class CommentListView extends StatelessWidget {
  final int commentCount;

  const CommentListView({super.key, required this.commentCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StyledText(
          text: '댓글<s>($commentCount)</s>',
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
          CircleProfileImage(
            imageUrl: profileImageSrc,
            width: 36,
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
