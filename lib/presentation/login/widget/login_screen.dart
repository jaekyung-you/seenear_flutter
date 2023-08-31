import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/login/controller/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BaseHeader(title: '로그인'),
            Expanded(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Text(
                    '카카오톡으로 로그인 하시면\n내 정보 관리, 찜 목록, 후기 관리 등을\n이용할 수 있어요!',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 21,
                      color: SeenearColor.grey70,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '귀찮은 정보 입력 없이, 3초 만에 로그인하기!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: SeenearColor.grey50,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      InkWell(
                        onTap: () {},
                        child: Image.asset('assets/images/kakao_login_button.png'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
