import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class ReviewCell extends StatelessWidget {
  final Function() onTapItemCell;
  final bool? hasFavoriteIcon;
  final Function()? onTapFavoriteIcon;

  const ReviewCell({super.key, required this.onTapItemCell, this.onTapFavoriteIcon, this.hasFavoriteIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapItemCell(),
      child: Container(
        height: 140,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: emptyImage(),
                    ),
                  ),
                  if (hasFavoriteIcon == true)
                    Positioned(
                      bottom: 4,
                      right: 12,
                      child: InkWell(
                        onTap: () {
                          if (onTapFavoriteIcon != null) onTapFavoriteIcon!();
                        },
                        child: Image.asset(
                          'assets/images/favorite_empty.png',
                          width: 30,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2023-00-00',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    child: Text(
                      '핑크빛장미님이 작성한 리뷰가 여기에 노출됩니다. 리뷰는 최대 세줄 노출됩니다. 핑크빛장미님이 작성한 리뷰가 여기에 노출됩니다. 리뷰는 최대 세줄 노출됩니다.',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/heart.png',
                        width: 20,
                        color: SeenearColor.blue40,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '4',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/reply.png',
                        width: 20,
                        color: SeenearColor.blue40,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text('댓글 8', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget reviewImage() {
    return AspectRatio(
      aspectRatio: 144 / 112,
      child: Image.network(
        'https://picsum.photos/200/303',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget emptyImage() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: SeenearColor.grey10,
      child: Column(
        children: [
          Image.asset(
            'assets/images/seenear_character_4.png',
            height: 68,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            '이미지 없음',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: SeenearColor.grey20),
          ),
        ],
      ),
    );
  }
}
