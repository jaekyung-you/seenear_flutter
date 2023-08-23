import 'package:get/get.dart';

import '../../../const/enum/sign_up_process_stage.dart';

class SignUpController extends GetxController {
  SignUpProcessStage currentStage = SignUpProcessStage.residence;
  bool enableNextButton = false;

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
}