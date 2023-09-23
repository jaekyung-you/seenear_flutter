import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:seenear/const/design_system/one_button_bottom_sheet.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/data/remote/response/info_item_response.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../const/define.dart';
import '../../../const/seenear_path.dart';

class MarketFestivalController extends GetxController {
  bool isMarket = true;
  RxList<InfoItemResponse> marketList = <InfoItemResponse>[].obs;
  RxList<InfoItemResponse> festivalList = <InfoItemResponse>[].obs;

  // property
  RxInt totalCount = 10.obs;
  RxString region = ''.obs; // 지역
  RxString location = ''.obs; // 동네
  RxString date = ''.obs; // 2023-10-07 (월) 이런식

  RxList<String> filterList = <String>[].obs;
  RxString sort = '거리순'.obs; // or 인기순

  @override
  void onInit() {
    super.onInit();
    initializeDateFormatting(Localizations.localeOf(Get.context!).languageCode);
    if (Get.arguments != null) {
      isMarket = Get.arguments['type'] == 'market';
    }
    getList();
  }

  void onTapResetButton() {
    region.value = '';
    location.value = '';
    date.value = '';
    filterList.value = [];
  }

  Future<void> getList() async {
    if (isMarket) {
      totalCount.value = marketList.length;
      // todo: market list api 호출
    } else {
      totalCount.value = festivalList.length;
      // todo: festival list api 호출
    }

    return;
  }

  void onTapFilterCell({required int index}) {
    String title = '';
    Widget? content;

    if (index == 0) {
      title = '지역을 선택해주세요';
      content = SizedBox(
        height: Get.height / 1.9,
        child: GridView.builder(
            itemCount: Defines.selectRegionList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              mainAxisSpacing: 16, //수평 Padding
              crossAxisSpacing: 6,
              mainAxisExtent: 36, //수직 Padding
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  region.value = Defines.selectRegionList[index];
                  Get.back();
                },
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        Defines.selectRegionList[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: region.value == Defines.selectRegionList[index] ? SeenearColor.blue80 : SeenearColor.grey80, //
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      if (region.value == Defines.selectRegionList[index])
                        Image.asset(
                          'assets/images/check_filled.png',
                          width: 22,
                        ),
                    ],
                  );
                }),
              );
            }),
      );
    } else if (index == 1) {
      title = '동네를 선택해주세요';
      content = Container(
        color: Colors.purple,
        height: 370,
      );
    } else if (index == 2) {
      if (isMarket) {
        // 시장은 방문일자
        title = '방문 일자를 선택해주세요';
        content = SizedBox(
          height: 370,
          child: SfDateRangePicker(
            onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
              _onSelectChanged(args);
            },
            showNavigationArrow: true,
            selectionColor: SeenearColor.blue80,
            monthCellStyle: const DateRangePickerMonthCellStyle(
              todayCellDecoration: BoxDecoration(
                color: Colors.transparent,
              ),
              weekendTextStyle: TextStyle(color: Colors.red),
            ),
            headerStyle: DateRangePickerHeaderStyle(
              textAlign: TextAlign.center,
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: SeenearColor.grey70,
              ),
            ),
          ),
        );
      } else {
        // 축제는 방문시기
        title = '방문 시기를 선택해주세요';
        content = SizedBox(
          height: 370,
          child: SfDateRangePicker(
            onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
              _onSelectChanged(args);
            },
            showTodayButton: false,
            view: DateRangePickerView.year,
            enablePastDates: true,
            allowViewNavigation: false,
            selectionColor: SeenearColor.blue60,
            selectionShape: DateRangePickerSelectionShape.rectangle,
            showNavigationArrow: true,
            todayHighlightColor: SeenearColor.blue80,
            yearCellStyle: const DateRangePickerYearCellStyle(
              cellDecoration: BoxDecoration(
                color: Colors.transparent,
              )
            ),
            headerStyle: DateRangePickerHeaderStyle(
              textAlign: TextAlign.center,
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: SeenearColor.grey70,
              ),
            ),
          ),
        );
      }
    }

    Get.bottomSheet(
      isScrollControlled: true,
      OneButtonBottomSheet(
        title: title,
        content: content!,
        buttonTitle: '취소',
        onTapButton: () {
          Get.back();
        },
      ),
    );
  }

  void _onSelectChanged(DateRangePickerSelectionChangedArgs args) {
    String dayOfWeek = DateFormat('E', 'ko_KR').format(args.value);
    date.value = '${args.value.toString().split(' ').first} ($dayOfWeek)';
    Get.back();
  }

  // 해당 아이템을 클릭했을 때, 장날 상세화면으로 이동
  void onTapMarketItemCell({required int id}) {
    Get.toNamed(SeenearPath.MARKET_DETAIL, arguments: {'id': id});
  }
}
