import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/enum/my_page_menu.dart';
import 'package:seenear/const/enum/my_page_setting.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_menu_controller.dart';
import 'package:styled_text/styled_text.dart';

class MyPageScreen extends GetView<MyPageController> {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '내 정보'),
          ),
          const SizedBox(height: 20,),
          myPageHeader(),
          const SizedBox(height: 20,),
          myPageMenu(),
          const SizedBox(height: 20,),
          Divider(height: 2, color: SeenearColor.grey20,),
          const SizedBox(height: 20,),
          myPageSetting(),
        ],
      ),
    );
  }

  Widget myPageHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StyledText(
            text: '<s>닉네임</s> 님,\n오늘도 행복한 하루 되세요!',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500, color: SeenearColor.grey60),
            tags: {
              's': StyledTextTag(
                style: TextStyle(fontWeight: FontWeight.w700, color: SeenearColor.blue60, fontSize: 21),
              ),
            },
          ),
          Image.asset(
            'assets/images/temp_profile.png',
            width: 64,
          ),
        ],
      ),
    );
  }

  Widget myPageMenu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (MyPageMenu menu in MyPageMenu.values)
            InkWell(
              onTap: () => controller.onTapMenuItem(menu),
              child: Column(
                children: [
                  Image.asset(
                    menu.icon,
                    width: 28,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    menu.title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }

  Widget myPageSetting() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          for (MyPageSetting setting in MyPageSetting.values)
            InkWell(
              onTap: () => controller.onTapSettingItem(setting),
              child: SizedBox(
                height: 52,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      setting.title,
                      style: TextStyle(fontWeight: FontWeight.w600, color: SeenearColor.grey60, fontSize: 18),
                    ),
                    Image.asset(
                      'assets/images/arrow_right.png',
                      color: SeenearColor.grey30,
                      width: 22,
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
