import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/market_festival/controller/market_detail_controller.dart';

import '../../../const/design_system/base_header.dart';
import '../../base_widget/seenear_base_scaffold.dart';

class MarketDetailScreen extends GetView<MarketDetailController> {
  const MarketDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const BaseHeader(title: '시장 정보'),
            ),
            const SizedBox(
              height: 10,
            ),
            marketInfo(),
            Expanded(
              child: marketReview(),
            ),
          ],
        ),
      ),
    );
  }

  Widget marketInfo() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '몰디브 시장',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
                ),
                Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: SeenearColor.blue60,
                        width: 1,
                      )),
                  child: Text(
                    '찜하기',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: SeenearColor.blue60),
                  ),
                ),
              ],
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
            Row(
              children: [
                Text(
                  '모히토시 몰디브구 칵테일동 주소가 한줄',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/copy.png', width: 16),
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
              ],
            ),
            Row(
              children: [
                Image.asset(
                  '',
                  width: 20,
                ),
                Text(
                  '평일 9:00-19:00',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: SeenearColor.grey60,
                  ),
                ),
                Image.asset(
                  '',
                  width: 20,
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
            Row(
              children: [
                Image.asset(
                  '',
                  width: 20,
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
            Row(
              children: [
                Image.asset(
                  '',
                  width: 20,
                ),
                Text(
                  '공중화장실',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: SeenearColor.grey60,
                  ),
                ),
                Image.asset(
                  '',
                  width: 20,
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
          ],
        ));
  }

  Widget marketReview() {
    return Column(
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
            Container(
              width: 116,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: SeenearColor.blue60, width: 1),
              ),
              child: Row(
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
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
            mainAxisSpacing: 3, //수평 Padding
            crossAxisSpacing: 3, //수직 Padding
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.pink,
            );
          },
        ),
      ],
    );
  }
}
