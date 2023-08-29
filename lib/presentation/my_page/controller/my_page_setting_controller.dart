import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_bottom_sheet.dart';
import 'package:seenear/data/local/helper_text_type.dart';
import 'package:seenear/domain/util/snack_bar_manager.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/deactive_account_screen.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/nickname_edit_screen.dart';

class MyPageSettingController extends GetxController {
  TextEditingController nicknameEditController = TextEditingController();
  HelperTextType helperTextType = HelperTextType(isError: false, helperText: '닉네임을 입력해주세요.');

  List<String> noticeList = [];

  List<String> deactiveReasons = [
    '개인정보 노출이 걱정돼요',
    '자주 사용하지 않아요',
    '알림이 너무 자주 와요',
    '콘텐츠 신뢰도가 낮아요',
    '앱 이용이 어려워요',
    '기타',
  ];

  @override
  void onInit() {
    super.onInit();
    nicknameEditController.text = '핑크빛장미'; // 본래 유저의 닉네임
  }

  void onTapEditProfileImage() {}

  void onTapEditNickname() {
    Get.to(() => const NicknameEditScreen());
  }

  void onTapFinishEditNickname() {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '닉네임 변경을 완제료하시겠어요?',
        desc: '완료 이후 변경된 닉네임으로 적용됩니다.',
        buttonTitles: const ['아니요', '완료'],
        onTapButton: (index) {
          Get.back();
          if (index == 1) {
            // todo: 닉네임 변경 api
            SnackBarManager().showSnackBar(title: '닉네임 변경이 완료되었습니다.');
          }
        },
      ),
    );
  }

  void onTapDeactiveAccount() {
    Get.to(() => const DeactiveAccountScreen());
  }

  void onTapFinishDeactiveAccount() {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '정말 탈퇴 하시겠어요?',
        desc: '탈퇴시 회원님의 모든 정보는 즉시 폐기됩니다.',
        buttonTitles: const ['아니요', '탈퇴 완료'],
        onTapButton: (index) {
          Get.back();
          if (index == 1) {
            // todo: 탈퇴하기 api -> 인트로로 돌아가기
          }
        },
      ),
    );
  }
}
