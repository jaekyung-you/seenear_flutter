import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/rounded_widget.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';
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
          Expanded(
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
          ),
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
}
