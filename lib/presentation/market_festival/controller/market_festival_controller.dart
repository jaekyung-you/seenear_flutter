import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:seenear/const/design_system/one_button_bottom_sheet.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/data/remote/api/setting/get_address_list.dart';
import 'package:seenear/data/remote/response/info_item_response.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../const/define.dart';
import '../../../data/remote/response/address_response.dart';

class MarketFestivalController extends GetxController {
  // property
  bool isMarket = true;
  RxList<InfoItemResponse> marketList = <InfoItemResponse>[].obs;
  RxList<InfoItemResponse> festivalList = <InfoItemResponse>[].obs;
  RxInt totalCount = 10.obs;

  List<AddressResponse> addressList = []; // 서버에서 받은 값
  List<String> regionList = []; // 서버에서 받은 값 (addressDetailA에 해당)
  List<String> locationList = []; // 서버에서 받은 값 (addressDetailB에 해당)

  RxString selectedRegion = ''.obs; // 지역
  RxString selectedLocation = ''.obs; // 동네
  RxString selectedDate = ''.obs; // 2023-10-07 (월) 이런식

  RxList<String> filterList = <String>[].obs;
  RxString sort = '거리순'.obs; // or 인기순

  // usecase
  final GetAddressList _getAddressList = GetAddressList(); // 주소 선택을 위해 목록 받아오기

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
    selectedRegion.value = '';
    selectedLocation.value = '';
    selectedDate.value = '';
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

  Future<void> _requestAddressList() async {
    addressList.clear();
    regionList.clear();

    addressList = await _getAddressList();
    regionList.add("전체");
    addressList.map((e) => e.addressDetailA).toSet().toList().forEach((element) {
      regionList.add(Defines().convertRegion(region: element));
    });
  }

  // 선택한 addressDetailA 로부터 addressDetailB 리스트 추출
  Future<void> _getLocationList() async {
    locationList.clear();

    addressList.where((e) => Defines().convertRegion(region: e.addressDetailA) == selectedRegion.value).toList().forEach((element) {
      locationList.add(element.addressDetailB);
    });
  }

  Future<void> onTapFilterCell({required int index}) async {
    String title = '';
    Widget? content;

    if (index == 0) {
      await _requestAddressList();
      title = '지역을 선택해주세요';
      content = SizedBox(
        height: Get.height / 1.9,
        child: GridView.builder(
            itemCount: regionList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              mainAxisSpacing: 16, //수평 Padding
              crossAxisSpacing: 6,
              mainAxisExtent: 36, //수직 Padding
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (selectedRegion.value != regionList[index]) {
                    selectedLocation.value = ''; // selectedRegion.value 바뀌면 addressDetailB도 리셋
                  }
                  selectedRegion.value = regionList[index];
                  Get.back();
                },
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        regionList[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: selectedRegion.value == regionList[index] ? SeenearColor.blue80 : SeenearColor.grey80, //
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      if (selectedRegion.value == regionList[index])
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
      await _getLocationList();
      title = '동네를 선택해주세요';
      content = SizedBox(
        height: Get.height / 1.9,
        child: GridView.builder(
            itemCount: locationList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              mainAxisSpacing: 16, //수평 Padding
              crossAxisSpacing: 6,
              mainAxisExtent: 36, //수직 Padding
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  selectedLocation.value = locationList[index];
                  print('selectedLocation: ${selectedLocation.value}');
                  Get.back();
                },
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        locationList[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: selectedRegion.value == locationList[index] ? SeenearColor.blue80 : SeenearColor.grey80, //
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      if (selectedLocation.value == locationList[index])
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
            )),
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
    selectedDate.value = '${args.value.toString().split(' ').first} ($dayOfWeek)';
    Get.back();
  }
}
