import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:styled_text/styled_text.dart';

import '../../../const/seenear_path.dart';

class SignUpCompleteScreen extends StatelessWidget {
  const SignUpCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      padding: 16.0,
      child: Column(
        children: [
          SizedBox(
            height: 48,
            child: Text(
              '회원가입 완료!',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21, color: SeenearColor.grey60),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/welcome_image.png',
                  height: 73,
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.asset(
                  'assets/images/seenear_character_3.png',
                  width: 70,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '모두 완료되었습니다!',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                StyledText(
                  text: '대한민국 대표 시니어 플랫폼\n<s>씨니어</s>에서 다양한 혜택과\n정보를 제공해 드릴게요!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                  tags: {
                    's': StyledTextTag(
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: SeenearColor.blue60,
                      ),
                    ),
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
          BaseButton(
              buttonText: '홈 화면으로 이동',
              isDisabled: false,
              onPressed: () {
                Get.offAllNamed(SeenearPath.HOME);
              }),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
