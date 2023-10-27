import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/market_festival/controller/market_festival_controller.dart';

class FilterWidget extends GetView<MarketFestivalController> {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Obx(() {
            return selectCell(
              title: controller.selectedRegion.isEmpty ? '지역을 선택해주세요' : controller.selectedRegion.value,
              onTap: () {
                controller.onTapFilterCell(index: 0);
              },
            );
          }),
          const SizedBox(
            height: 10,
          ),
          Obx(() {
            return selectCell(
              title: controller.selectedLocation.isEmpty ? '동네를 선택해주세요' : controller.selectedLocation.value,
              onTap: () {
                controller.onTapFilterCell(index: 1);
              },
            );
          }),
          const SizedBox(
            height: 10,
          ),
          Obx(() {
            return selectCell(
              title: controller.selectedDate.isEmpty ? '방문 일자를 선택해주세요' : controller.selectedDate.value,
              imageName: 'date_available',
              onTap: () {
                controller.onTapFilterCell(index: 2);
              },
            );
          }),
          SizedBox(
            height: 40,
            child: Obx(() {
              return Row(
                children: [
                  if (controller.selectedRegion.value.isNotEmpty)
                    selectedFilter(
                      title: controller.selectedRegion.value,
                      onTap: () {
                        controller.selectedRegion.value = '';
                      },
                    ),
                  if (controller.selectedLocation.value.isNotEmpty)
                    selectedFilter(
                      title: controller.selectedLocation.value,
                      onTap: () {
                        controller.selectedLocation.value = '';
                      },
                    ),
                  if (controller.selectedDate.value.isNotEmpty)
                    selectedFilter(
                      title: controller.selectedDate.value,
                      onTap: () {
                        controller.selectedDate.value = '';
                      },
                    ),
                  const Spacer(),
                  selectedFilter(
                    title: '초기화',
                    fgColor: SeenearColor.grey30,
                    imageName: 'reset',
                    onTap: () {
                      controller.onTapResetButton();
                    },
                  ),
                ],
              );
            }),
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
