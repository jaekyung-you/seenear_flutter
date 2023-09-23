import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/market_festival/controller/market_detail_controller.dart';

import '../../../const/design_system/base_header.dart';
import '../../base_widget/seenear_base_scaffold.dart';

class MarketDetailScreen extends GetView<MarketDetailController> {
  const MarketDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BaseHeader(title: '시장 정보'),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CarouselSlider(
                  options: CarouselOptions(height: 196.0, autoPlay: true),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(width: Get.width, color: SeenearColor.blue10);
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
            marketInfo(),
            marketReview(),
          ],
        ),
      ),
    );
  }

  Widget marketInfo() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '몰디브 시장',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  controller.onTapFavoriteButton();
                },
                child: Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: SeenearColor.blue60,
                        width: 1,
                      )),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/heart.png',
                          color: SeenearColor.blue60,
                          width: 16,
                        ),
                        Text(
                          '찜하기',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: SeenearColor.blue60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/star.png',
                width: 20,
              ),
              Text(
                '4.3',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '모히토시 몰디브구 칵테일동 주소가 한줄',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
              ),
              InkWell(
                onTap: () {
                  controller.onTapCopyAddress();
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/copy.png',
                      width: 16,
                      color: SeenearColor.blue60,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '주소복사',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: SeenearColor.blue60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/schedule.png',
                width: 20,
                color: SeenearColor.grey30,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '평일 9:00-19:00',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: SeenearColor.grey60,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/date_available.png',
                width: 20,
                color: SeenearColor.grey30,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '매달 3,8일',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: SeenearColor.grey60,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/store.png',
                width: 20,
                color: SeenearColor.grey30,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '약 300개 이상의 점포',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: SeenearColor.grey60,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/wc.png',
                width: 20,
                color: SeenearColor.grey30,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '공중화장실',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: SeenearColor.grey60,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/images/parking.png',
                width: 20,
                color: SeenearColor.grey30,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '주차장',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: SeenearColor.grey60,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          BaseButton(
              bgColor: SeenearColor.blue10,
              fgColor: SeenearColor.blue80,
              buttonText: '가는 길 바로 보기',
              onPressed: () {
                controller.onTapNavigate();
              }),
        ],
      ),
    );
  }

  Widget marketReview() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '최근 방문자 후기',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {
                  controller.onTapWriteReview();
                },
                child: Container(
                  width: 116,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: SeenearColor.blue60, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        color: SeenearColor.blue60,
                        size: 16,
                      ),
                      Text(
                        '나도 후기 쓰기',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: SeenearColor.blue60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                childAspectRatio: 1,
                mainAxisSpacing: 3, //수평 Padding
                crossAxisSpacing: 3, //수직 Padding
              ),
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.pink,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
