import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/extension/int_extension.dart';
import 'package:seenear/const/seenear_path.dart';
import '../../../../data/remote/response/info_item_response.dart';

class MarketCell extends StatelessWidget {
  final InfoItemResponse item;
  final Function onTapFavoriteIcon;
  final Function onTapDelete;
  final bool? showDeleteButton;

  const MarketCell({
    super.key,
    required this.item,
    required this.onTapFavoriteIcon,
    required this.onTapDelete,
    this.showDeleteButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(SeenearPath.MARKET_DETAIL, arguments: {'id': item.itemId});
      },
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
                      child: marketImage(),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 12,
                    child: InkWell(
                      onTap: () => onTapFavoriteIcon(),
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
                  Row(
                    children: [
                      Text(
                        item.name,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: SeenearColor.grey60),
                      ),
                      const Spacer(),
                      if (showDeleteButton == true)
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/close.png',
                            width: 24,
                            color: SeenearColor.blue60,
                          ),
                        )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '모히토시 몰디브구',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: SeenearColor.grey60),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/date_available.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text('매달 3,8일', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50))
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        width: 22,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '${item.score}',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '후기 ${item.reviewCount.limitThousand()}개',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey30),
                      ),
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

  Widget marketImage() {
    return AspectRatio(
      aspectRatio: 144 / 112,
      child: Image.network(
        item.images?.first.isNotEmpty == true ? item.images!.first : 'https://picsum.photos/200/303',
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

  Widget closedImage() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            color: SeenearColor.textColor,
          ),
          child: AspectRatio(
            aspectRatio: 144 / 112,
            child: Image.network(
              'https://picsum.photos/200/303',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Text(
            '폐장했어요',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: SeenearColor.white),
          ),
        )
      ],
    );
  }
}
