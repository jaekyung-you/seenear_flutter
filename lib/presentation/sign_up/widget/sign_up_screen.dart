import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/enum/sign_up_process_stage.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';

// GetPage에서 put했으니 GetView사용해도 될 듯 (이미 put되어야함, GetView는 find하는 wrapper)
class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GetBuilder<SignUpController>(builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseHeader(title: controller.currentStage.title),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  controller.currentStage.subtitle,
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: SeenearColor.grey70),
                ),
                if (controller.currentStage.desc != null)
                  Text(
                    controller.currentStage.desc!,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: SeenearColor.grey50),
                  ),
                const SizedBox(
                  height: 22,
                ),
                Expanded(child: contentView()),
                buttonArea(),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget contentView() {
    switch (controller.currentStage) {
      case SignUpProcessStage.residence:
      case SignUpProcessStage.interest:
      case SignUpProcessStage.interestRegion:
        return GridView.builder(
          itemCount: controller.currentStage.itemList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
            mainAxisSpacing: 30, //수평 Padding
            crossAxisSpacing: 30, //수직 Padding
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.purple,
              width: 100,
              height: 100,
            );
          },
        );
      case SignUpProcessStage.nickname:
        return Container();
    }
  }

  Widget buttonArea() {
    return Column(
      children: [
        BaseButton(
            buttonText: '선택 완료',
            isDisabled: false,
            onPressed: () {
              controller.onTapSelectItem();
            }),
        InkWell(
          onTap: () {
            controller.moveToNextStage();
          },
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.currentStage != SignUpProcessStage.nickname ? '건너뛰기' : '카카오톡 이름 사용하기',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: SeenearColor.grey30),
                ),
                Image.asset(
                  'assets/images/arrow_right.png',
                  color: SeenearColor.grey30,
                  width: 20,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
