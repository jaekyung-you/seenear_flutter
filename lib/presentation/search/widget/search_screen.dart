import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import '../../../const/design_system/seenear_color.dart';
import '../controller/search_controller.dart';

/// '검색' 화면
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late SearchScreenController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(SearchScreenController());
  }

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
          TabBar(
            controller: controller.tabController,
            onTap: (value) {
              setState(() {
                controller.tabController.index = value;
              });
            },
            tabs: [
              for (String title in controller.tabList)
                SizedBox(
                  width: Get.width / 2,
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
            ],
            indicatorColor: SeenearColor.blue60,
            indicatorWeight: 2,
            labelColor: SeenearColor.blue80,
            unselectedLabelColor: SeenearColor.grey50,
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
