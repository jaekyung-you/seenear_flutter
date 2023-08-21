import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';

// GetPage에서 put했으니 GetView사용해도 될 듯 (이미 put되어야함, GetView는 find하는 wrapper)
class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('헤더 영역'),
            SingleChildScrollView(
              child: Text('스크롤 영역'),
            ),
            buttonArea(),
          ],
        ),
      ),
    );
  }

  Widget buttonArea() {
    return Column(
      children: [
        BaseButton(buttonText: '선택 완료', isDisabled: false, onPressed: () {}),
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              Text(
                '건너뛰기',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: SeenearColor.grey30),
              ),
              Image.asset(
                'assets/images/arrow_right.png',
                color: SeenearColor.grey30,
              )
            ],
          ),
        )
      ],
    );
  }
}
