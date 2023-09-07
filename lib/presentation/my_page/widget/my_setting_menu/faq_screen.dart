import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/rounded_widget.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/seenear_path.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';
import '../../../../const/design_system/empty_view.dart';
import '../../controller/help_desk_controller.dart';

class FAQScreen extends GetView<HelpDeskController> {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '자주 묻는 질문'),
          ),
          Obx(() {
            return Expanded(
              child: Column(
                children: [
                  searchTextField(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Divider(
                      color: SeenearColor.grey20,
                      height: 0.5,
                    ),
                  ),
                  controller.searchInputController.text.isEmpty ? searchResultView() : faqContentView()
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget searchTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 48,
        child: TextField(
          controller: controller.searchInputController,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: SeenearColor.grey50,
            ),
            fillColor: Colors.white,
            filled: true,
            focusColor: Colors.white,
            enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: SeenearColor.blue60),
            ),
            hintText: '검색어를 입력해주세요',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: SeenearColor.grey30,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }

  Widget helpKeyword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '도움 키워드',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: SeenearColor.grey70,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              for (String title in controller.helpKeyword)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                  child: RoundedWidget(
                    text: title,
                    bgColor: SeenearColor.grey10,
                    fgColor: SeenearColor.grey60,
                    horizontalPadding: 10,
                    borderRadius: 16,
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }

  Widget topFiveQuestion() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '자주 묻는 질문 TOP 5',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: SeenearColor.grey70,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledText(
                        text: '<s>Q${index + 1}</s> 전통 시장 가는 길 찾는 법',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: SeenearColor.grey60,
                        ),
                        tags: {
                          's': StyledTextTag(
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: SeenearColor.blue60,
                              fontSize: 18,
                            ),
                          ),
                        },
                      ),
                      Image.asset(
                        'assets/images/arrow_right.png',
                        width: 22,
                        color: SeenearColor.grey30,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget faqContentView() {
    return Expanded(
      child: Column(
        children: [
          helpKeyword(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Divider(
              color: SeenearColor.grey20,
              height: 0.5,
            ),
          ),
          Expanded(child: topFiveQuestion()),
        ],
      ),
    );
  }

  Widget searchResultView() {
    String resultText = controller.searchInputController.text.trim();

    return Expanded(
      child: controller.searchResultList.isEmpty
          ? Column(
              children: [
                const Spacer(),
                const Center(
                  child: EmptyView(text: '검색결과가 없어요'),
                ),
                const Spacer(),
                const Text(
                  '궁금하신 점이 해결이 안 되셨나요?',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
                ),
                const SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BaseButton(
                    buttonText: '1:1 문의하기',
                    onPressed: () {
                      Get.toNamed(SeenearPath.MY_PAGE_HELP_DESK_INQUIRY);
                    },
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 12.0),
                  child: StyledText(
                    text: '$resultText 검색 결과 <s>${controller.searchResultList.length}건</s>',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    tags: {
                      's': StyledTextTag(
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: SeenearColor.blue80,
                          fontSize: 20,
                        ),
                      ),
                    },
                  ),
                ),
                resultCell(resultText),
                resultCell(resultText),
                resultCell(resultText),
              ],
            ),
    );
  }

  Widget resultCell(String resultText) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: SizedBox(
        height: 52,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StyledText(
              text: '<s>resultText</s> 하고 싶어요.',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 18,
              ),
              tags: {
                's': StyledTextTag(
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: SeenearColor.blue80,
                    fontSize: 18,
                  ),
                ),
              },
            ),
            Image.asset(
              'assets/images/arrow_right.png',
              color: SeenearColor.grey30,
              width: 22,
            ),
          ],
        ),
      ),
    );
  }
}
