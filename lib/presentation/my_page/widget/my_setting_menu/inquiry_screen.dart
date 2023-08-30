import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import '../../../base_widget/seenear_base_scaffold.dart';
import '../../controller/help_desk_controller.dart';

class InquiryScreen extends GetView<HelpDeskController> {
  const InquiryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '1:1 문의하기'),
          ),
          inquiryContent(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Divider(
              color: SeenearColor.grey20,
              height: 0.5,
            ),
          ),
          bottomButton()
        ],
      ),
    );
  }

  Widget inquiryContent() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '- 불편 사항, 개선 요청, 도움 요청 등 원하시는 문의 사항을 아래에 입력해주세요.\n- 사진, 화면 캡처 등을 첨부해주시면, 보다 정확한 답변을 받으실 수 있어요!\n- 답변은 영업일 기준 2~3일 정도 소요됩니다. 조금만 기다려주세요.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: SeenearColor.grey50,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Divider(
                color: SeenearColor.grey20,
                height: 0.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '답변 받으실 곳을 선택해주세요',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: SeenearColor.grey60,
                      ),
                    ),
                    Text(
                      '복수 선택 가능',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: SeenearColor.grey50,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 48,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: SeenearColor.grey5,
                              ),
                              child: Text(
                                '카카오톡',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: SeenearColor.grey50,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 48,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: SeenearColor.grey5,
                              ),
                              child: Text(
                                '문자',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: SeenearColor.grey50,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: controller.phoneInputController,
                      decoration: InputDecoration(
                        hintText: '연락처',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: SeenearColor.grey30,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: SeenearColor.grey5,
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '문의 내용',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: SeenearColor.grey60,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: controller.inquiryTitleInputController,
                      decoration: InputDecoration(
                        hintText: '문의 제목을 입력해주세요',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: SeenearColor.grey30,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: SeenearColor.grey5,
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 200,
                      child: TextField(
                        controller: controller.inquiryContentInputController,
                        maxLines: null,
                        expands: true,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: '문의하실 내용을 입력해주세요',
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: SeenearColor.grey30,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: SeenearColor.grey5,
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '첨부 파일',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: SeenearColor.grey60,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        // width: 100,
                        // height: 100,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: SeenearColor.grey5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              size: 28,
                              color: SeenearColor.grey30,
                            ),
                            const SizedBox(height: 6,),
                            Text(
                              '이미지 첨부',
                              style: TextStyle(
                                color: SeenearColor.grey30,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 140,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/check_in_circle.png',
                width: 22,
                color: SeenearColor.grey30,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                '[필수] 개인정보 수집, 이용 동의',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: SeenearColor.grey60,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    '보기 ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: SeenearColor.blue60,
                      fontSize: 14,
                    ),
                  ),
                  Image.asset(
                    'assets/images/arrow_right.png',
                    color: SeenearColor.blue60,
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          BaseButton(
            buttonText: '작성 완료',
            isDisabled: true,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
