import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class FilterWidget extends StatelessWidget {
  final bool isMarket;

  const FilterWidget({super.key, required this.isMarket});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          selectCell(title: '지역을 선택해주세요', onTap: () {}),
          const SizedBox(
            height: 10,
          ),
          selectCell(
            title: '동네를 선택해주세요',
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          selectCell(
            title: '방문 일자를 선택해주세요',
            imageName: 'date_available',
            onTap: () {},
          ),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                selectedFilter(
                  title: '인천',
                  onTap: () {},
                ),
                selectedFilter(
                  title: '남동구',
                  onTap: () {},
                ),
                selectedFilter(
                  title: '2023-10-07 (월)',
                  onTap: () {},
                ),
                const Spacer(),
                selectedFilter(
                  title: '초기화',
                  fgColor: SeenearColor.grey30,
                  imageName: 'reset',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget selectCell({required String title, String? imageName, Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: SeenearColor.grey20,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/${imageName ?? 'location'}.png',
                  width: 22,
                  color: SeenearColor.grey30,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: SeenearColor.grey50),
                ),
              ],
            ),
            Image.asset(
              'assets/images/arrow_down.png',
              width: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedFilter({
    required String title,
    Color? fgColor,
    String? imageName,
    Function? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: () {
          onTap!();
        },
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: fgColor ?? SeenearColor.blue60),
            ),
            Image.asset(
              'assets/images/${imageName ?? 'close'}.png',
              color: fgColor ?? SeenearColor.blue60,
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}
