import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/data/local/helper_text_type.dart';
import 'package:seenear/data/remote/api/member/get_random_nickname.dart';
import 'package:seenear/data/remote/api/setting/get_interest_category_list.dart';
import 'package:seenear/data/remote/api/setting/register_additional_info.dart';
import '../../../const/design_system/base_bottom_sheet.dart';
import '../../../const/enum/sign_up_process_stage.dart';
import '../../../data/remote/response/interest_category_response.dart';

class SignUpController extends GetxController {
  // property
  SignUpProcessStage currentStage = SignUpProcessStage.region;
  bool enableNextButton = false;
  TextEditingController nicknameController = TextEditingController();
  HelperTextType helperTextType = HelperTextType(isError: false, helperText: '닉네임을 입력하지 않으면,\n카카오톡에 등록된 이름으로 자동 설정돼요!');

  RxString selectedRegion = ''.obs; // 살고 있는 거주 지역
  RxList<String> selectedRegionList = <String>[].obs; // 선택한 관심 지역 (최대5개)
  RxList<InterestCategoryResponse> interestList = <InterestCategoryResponse>[].obs;
  RxList<InterestCategoryResponse> selectedInterest = <InterestCategoryResponse>[].obs; // 관심사 선택 (최대5개)

  RxString nickname = ''.obs;

  // usecase
  final GetInterestCategory _getInterestCategory = GetInterestCategory(); // 관심사 받아오기
  final GetRandomNickname _getRandomNickname = GetRandomNickname(); // 랜덤 닉네임 받아오기
  final RegisterAdditionalInfo _registerAdditionalInfo = RegisterAdditionalInfo(); // 추가 정보 등록

  @override
  void onInit() {
    super.onInit();
    _requestInterestList();
  }

  Future<void> _requestInterestList() async {
    interestList.value = await _getInterestCategory();
  }

  void onTapSelectItem() {
    // todo: api 호출 (_registerAdditionalInfo)
    switch (currentStage) {
      case SignUpProcessStage.region:
        break;
      case SignUpProcessStage.interest:
        break;
      case SignUpProcessStage.interestRegion:
        break;
      case SignUpProcessStage.nickname:
        break;
    }

    // 성공 시,
    moveToNextStage();
  }

  void moveToNextStage() {
    int index = SignUpProcessStage.values.indexOf(currentStage);

    // 마지막 단계: 닉네임 입력 화면에서 '선택완료' 누르면 api 호출 & 회원가입 완료 화면
    if (index == SignUpProcessStage.values.length - 1) {
      // 회원가입 완료 화면
      // todo: api 호출 (_registerAdditionalInfo) -> 지역의 경우 변환 필요
      // Get.toNamed(SeenearPath.SIGN_UP_COMPLETE);
      return;
    }

    currentStage = SignUpProcessStage.values[index + 1];
    if (currentStage == SignUpProcessStage.nickname) {
      // 닉네임 단계에서 랜덤 닉네임 api 호출하기
      _requestRandomNickname();
    }
    enableNextButton = false;
    // update();
  }

  void onTapSkipPage() {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '${currentStage.bottomSheetTitle} 선택하지 않으시면\n정확한 맞춤 정보를\n제공 받으실 수 없어요.',
        buttonTitles: const ['지금 선택하기', '건너뛰기'],
        onTapButton: (index) {
          Get.back();
          if (index == 1) moveToNextStage();
        },
      ),
    );
  }

  void onTapBack() {
    int index = SignUpProcessStage.values.indexOf(currentStage);
    // 마지막 단계
    if (index == 0) {
      Get.back();
      return;
    }

    currentStage = SignUpProcessStage.values[index - 1];
    enableNextButton = true; // 선택 값의 유무에 따라
    update();
  }

  // 카카오 이름 사용하기
  void useKakaoName() {}

  Future<void> _requestRandomNickname() async {
    nickname.value = await _getRandomNickname();
    nicknameController.text = nickname.value;
  }

  // 리스트 최대 5개까지 추가하는 함수
  void selectListUpToFive({required dynamic item, required bool isInterest}) {
    List<dynamic> list = isInterest ? selectedInterest : selectedRegionList;
    list.contains(item) ? list.remove(item) : list.add(item);
  }
}
