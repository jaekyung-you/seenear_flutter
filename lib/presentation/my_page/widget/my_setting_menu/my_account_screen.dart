import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/rounded_widget.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_setting_controller.dart';
import 'package:styled_text/styled_text.dart';

import '../../../../const/design_system/seenear_color.dart';

class MyAccountScreen extends GetView<MyPageSettingController> {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const BaseHeader(title: '계정 관리'),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() {
                  return Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      controller.profileImageSrc.isEmpty
                          ? Image.asset(
                        'assets/images/default_profile.png',
                        width: 100,
                      )
                          : CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          controller.profileImageSrc.value,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.onTapEditProfileImage();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: SeenearColor.blue60,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
                const SizedBox(
                  height: 8,
                ),
                Obx(() {
                  return StyledText(
                    text: '<s>${controller.nickname.value}</s> 님, 환영해요!',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500, color: SeenearColor.grey60),
                    tags: {
                      's': StyledTextTag(
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21, color: SeenearColor.blue60),
                      ),
                    },
                  );
                }),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '이름 또는 닉네임',
                  style: TextStyle(fontWeight: FontWeight.w500, color: SeenearColor.grey50, fontSize: 16),
                ),
                Row(
                  children: [
                    Obx(() {
                      return Text(
                        controller.nickname.value,
                        style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 21),
                      );
                    }),
                    const Spacer(),
                    RoundedWidget(
                      text: '변경',
                      bgColor: Colors.white,
                      fgColor: SeenearColor.blue60,
                      borderColor: SeenearColor.blue60,
                      imageColor: SeenearColor.blue60,
                      horizontalPadding: 13.0,
                      icon: Icons.edit,
                      onTap: () {
                        controller.onTapEditNickname();
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: SeenearColor.grey20,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '로그인 방식',
                  style: TextStyle(fontWeight: FontWeight.w500, color: SeenearColor.grey50, fontSize: 16),
                ),
                Obx(() {
                  return Text(
                    controller.loginType.value,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 21,
                    ),
                  );
                }),
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: SeenearColor.grey20,
                  thickness: 1,
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                controller.onTapDeactiveAccount();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '회원 탈퇴 및 계정 삭제',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: SeenearColor.grey30),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    'assets/images/arrow_right.png',
                    color: SeenearColor.grey30,
                    height: 20,
                  )
                ],
              ),
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
