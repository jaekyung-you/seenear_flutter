import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/design_system/base_button.dart';
import '../../../../const/design_system/base_header.dart';
import '../../../../const/design_system/seenear_color.dart';
import '../../../../const/design_system/textfield_with_helper.dart';
import '../../../base_widget/seenear_base_scaffold.dart';
import '../../controller/my_page_setting_controller.dart';

class NicknameEditScreen extends GetView<MyPageSettingController> {
  const NicknameEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BaseHeader(title: '닉네임 변경'),
            const SizedBox(
              height: 20,
            ),
            Text(
              '사용하고 싶은\n닉네임을 입력해주세요.',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23, color: SeenearColor.grey70),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '최대 15자, 선택 입력',
              style: TextStyle(fontWeight: FontWeight.w500, color: SeenearColor.grey50, fontSize: 16),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFieldWithHelperText(
                editingController: controller.nicknameEditController, hintText: '', helperTextType: controller.helperTextType.value),
            const Spacer(),
            BaseButton(
              buttonText: '변경 완료',
              isDisabled: controller.nicknameEditController.text.trim().isEmpty,
              onPressed: () {
                controller.onTapFinishEditNickname();
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
