import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class FestivalCell extends StatelessWidget {
  const FestivalCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: Get.width / 3,
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
                  child: Image.asset(
                    'assets/images/favorite_empty.png',
                    width: 30,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        '제18회 국제 올림피아드 남해 마늘 한우 축제',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: SeenearColor.grey60),
                      ),
                    ),
                    // const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0, left: 4.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/close.png',
                          width: 24,
                          color: SeenearColor.blue60,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  '경남 남해시 남해유배문학관 앞',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: SeenearColor.grey60),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/date_available.png',
                      width: 20,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('2023-01-20(금)\n~2023-01-29(일)',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50))
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
                      '4.3',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey50),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '후기 999+개',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.grey30),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget marketImage() {
    return AspectRatio(
      aspectRatio: 108 / 152,
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

  Widget closedImage() {
    return Stack(
      fit: StackFit.expand,
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(SeenearColor.textColor, BlendMode.saturation),
          child: AspectRatio(
            aspectRatio: 108 / 152,
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
