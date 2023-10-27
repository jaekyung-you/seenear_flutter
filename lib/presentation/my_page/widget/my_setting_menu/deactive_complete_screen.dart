import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import '../../../../const/seenear_path.dart';

class DeactiveCompleteScreen extends StatelessWidget {
  const DeactiveCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/goodbye_image.png',
                  width: 202,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '회원 탈퇴가 완료되었습니다.',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: SeenearColor.grey70,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '남겨주신 의견을 반영하여 더 나은\n서비스를 제공하도록 노력하겠습니다!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                    color: SeenearColor.grey60,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BaseButton(
              buttonText: '홈 화면으로 이동',
              onPressed: () {
                Get.offAllNamed(SeenearPath.HOME);
              },
            ),
          )
        ],
      ),
    );
  }
}
