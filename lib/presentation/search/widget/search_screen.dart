import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/search/widget/search_default_screen.dart';
import 'package:seenear/presentation/search/widget/search_result_screen.dart';
import '../../../const/design_system/seenear_color.dart';
import '../controller/search_controller.dart';

/// '검색' 화면
class SearchScreen extends GetView<SearchScreenController> {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '검색'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 48,
              child: TextField(
                controller: controller.searchInputController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(
                    Icons.search,
                    color: SeenearColor.grey50,
                  ),
                  fillColor: SeenearColor.grey5,
                  filled: true,
                  focusColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(color: SeenearColor.blue60),
                  ),
                  hintText: '찾고 싶은 정보를 입력해보세요',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: SeenearColor.grey30,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          Obx(() {
            return Expanded(
              child: controller.showResult.value ? const SearchResultScreen() : const SearchDefaultScreen(),
            );
          }),
        ],
      ),
    );
  }
}
