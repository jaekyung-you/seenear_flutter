import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_setting_controller.dart';

import '../../../../data/remote/response/sign_out_reason_list.dart';

class DeactiveAccountScreen extends StatefulWidget {
  const DeactiveAccountScreen({super.key});

  @override
  State<DeactiveAccountScreen> createState() => _DeactiveAccountScreenState();
}

class _DeactiveAccountScreenState extends State<DeactiveAccountScreen> {
  final controller = Get.find<MyPageSettingController>();

  @override
  void initState() {
    super.initState();
    controller.requestSignOutReason();
  }

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
            Expanded(
              child: SingleChildScrollView(
                child: Obx(() {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/seenear_character_unhappy.png',
                            width: 70,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/images/dont_go_image.png',
                            height: 52,
                          ),
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
                      for (SignOutReason reason in controller.signOutReasonList)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: BaseButton(
                            buttonText: reason.displayText,
                            bgColor: controller.selectedReasons.contains(reason) ? SeenearColor.blue80 : SeenearColor.grey5,
                            fgColor: controller.selectedReasons.contains(reason) ? Colors.white : SeenearColor.grey50,
                            onPressed: () {
                              controller.onTapDeactivateReason(reason);
                            },
                          ),
                        ),
                      if (controller.selectedReasons.contains(controller.signOutReasonList.last))
                        SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: TextField(
                            controller: controller.customReasonInputController,
                            focusNode: controller.focusNode,
                            textAlign: TextAlign.start,
                            maxLines: null,
                            expands: true,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: SeenearColor.grey30,
                              ),
                              hintText: '불편하셨던 경험이나 내용을 입력해주세요',
                              filled: controller.focusNode.hasFocus ? false : true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              fillColor: controller.focusNode.hasFocus ? Colors.white : const Color(0xffF2F4F6),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: SeenearColor.blue60, width: 1.0),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                          ),
                        )
                    ],
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return BaseButton(
                buttonText: '탈퇴하기',
                isDisabled: controller.selectedReasons.isEmpty,
                onPressed: () {
                  controller.onTapFinishDeactiveAccount();
                },
              );
            }),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
