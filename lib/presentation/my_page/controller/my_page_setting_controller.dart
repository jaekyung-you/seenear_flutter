import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:seenear/data/local/helper_text_type.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/deactive_account_screen.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/nickname_edit_screen.dart';

class MyPageSettingController extends GetxController {
  TextEditingController nicknameEditController = TextEditingController();
  HelperTextType helperTextType = HelperTextType(isError: false, helperText: '닉네임을 입력해주세요.');

  @override
  void onInit() {
    super.onInit();
    nicknameEditController.text = '핑크빛장미'; // 본래 유저의 닉네임
  }

  void onTapEditProfileImage() {

  }

  void onTapEditNickname() {
    Get.to(() => const NicknameEditScreen());
  }

  void onTapFinishEditNickname() {

  }

  void onTapDeactiveAccount() {
    Get.to(() => const DeactiveAccountScreen());
  }
}