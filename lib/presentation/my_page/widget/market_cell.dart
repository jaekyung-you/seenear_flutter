import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class MarketCell extends StatelessWidget {
  const MarketCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: AspectRatio(aspectRatio: 144/112, child: Image.network('https://picsum.photos/200/303', fit: BoxFit.cover,)),
                  ),
                ),
                Image.asset('assets/images/.png', )
              ],
            ),
          ),
          const SizedBox(width: 14,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '몰디브 시장',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: SeenearColor.grey60),
                    ),
                    const Spacer(),
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
}
