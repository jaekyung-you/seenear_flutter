import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/data/local/helper_text_type.dart';

import '../../../const/enum/sign_up_process_stage.dart';

class SignUpController extends GetxController {
  SignUpProcessStage currentStage = SignUpProcessStage.residence;
  bool enableNextButton = false;
  TextEditingController nicknameController = TextEditingController();
  HelperTextType helperTextType = HelperTextType(
      isError: false, helperText: '닉네임을 입력하지 않으면,\n카카오톡에 등록된 이름으로 자동 설정돼요!');

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
    Get.bottomSheet(Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Colors.white),
      // color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${currentStage.bottomSheetTitle} 선택하지 않으시면\n정확한 맞춤 정보를\n제공 받으실 수 없어요.',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: SeenearColor.grey60),
          ),
          const SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                child: BaseButton(
                  bgColor: SeenearColor.blue10,
                  fgColor: SeenearColor.blue80,
                  buttonText: '지금 선택하기',
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: BaseButton(
                  buttonText: '건너뛰기',
                  onPressed: () {
                    Get.back();
                    moveToNextStage();
                  },
                ),
              )
            ],
          )
        ],
      ),
    ));
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
