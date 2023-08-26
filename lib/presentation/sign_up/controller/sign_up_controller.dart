import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/data/local/helper_text_type.dart';

import '../../../const/design_system/base_bottom_sheet.dart';
import '../../../const/enum/sign_up_process_stage.dart';

class SignUpController extends GetxController {
  SignUpProcessStage currentStage = SignUpProcessStage.residence;
  bool enableNextButton = false;
  TextEditingController nicknameController = TextEditingController();
  HelperTextType helperTextType = HelperTextType(isError: false, helperText: '닉네임을 입력하지 않으면,\n카카오톡에 등록된 이름으로 자동 설정돼요!');

  void onTapSelectItem() {
    // todo: api 호출
    switch (currentStage) {
      case SignUpProcessStage.residence:
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

    // 마지막 단계
    if (index == SignUpProcessStage.values.length - 1) {
      // 회원가입 완료 화면
      return;
    }

    currentStage = SignUpProcessStage.values[index + 1];
    enableNextButton = false;
    update();
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

  void useKakaoName() {}
}
