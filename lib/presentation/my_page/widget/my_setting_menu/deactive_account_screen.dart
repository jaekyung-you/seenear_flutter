import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_setting_controller.dart';

class DeactiveAccountScreen extends GetView<MyPageSettingController> {
  const DeactiveAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BaseHeader(title: '회원 탈퇴 및 계정 삭제'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/seenear_character_unhappy.png', width: 70,),
                const SizedBox(width: 8,),
                Image.asset('assets/images/dont_go_image.png', height: 52,),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '정말 탈퇴 하시겠어요?\n어떤 부분이 불편하셨을까요?',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23, color: SeenearColor.grey70),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '솔직하게 답변해주시면\n더욱 개선된 서비스를 만들기 위해 노력하는\n씨니어가 되겠습니다! (중복 응답 가능)',
              style: TextStyle(fontWeight: FontWeight.w500, color: SeenearColor.grey50, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            BaseButton(
              buttonText: '탈퇴하기',
              isDisabled: controller.nicknameEditController.text.trim().isEmpty,
              onPressed: () {
                controller.onTapFinishDeactiveAccount();
              },
            ),
          ],
        ),
      ),
    );
  }
}
