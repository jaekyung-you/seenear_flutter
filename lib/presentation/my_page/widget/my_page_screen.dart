import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_controller.dart';
import 'package:styled_text/styled_text.dart';

class MyPageScreen extends GetView<MyPageController> {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          const BaseHeader(title: '내 정보'),
          myPageHeader(),
          myPageMenu(),
          myPageSetting()
        ],
      ),
    );
  }

  Widget myPageHeader() {
    return Column(
      children: [
        StyledText(
          text: '<s>닉네임</s> 님,\n오늘도 행복한 하루 되세요!',
          tags: {
            's': StyledTextTag(
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: SeenearColor.blue60,
                  fontSize: 21),
            ),
          },
        ),
        Image.asset(
          'assets/images/temp_profile.png',
          width: 64,
        ),
      ],
    );
  }

  Widget myPageMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (MyPageMenu menu in MyPageMenu.values)
          Column(
            children: [
              Image.asset(menu.icon),
              const SizedBox(
                height: 10,
              ),
              Text(
                menu.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          )
      ],
    );
  }

  Widget myPageSetting() {
    return Column(
      children: [
        for (MyPageSetting setting in MyPageSetting.values)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                setting.title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: SeenearColor.grey60,
                    fontSize: 18),
              ),
              Image.asset(
                'assets/image/arrow_right.png',
                color: SeenearColor.grey30,
                width: 22,
              )
            ],
          )
      ],
    );
  }
}
