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
            padding: const EdgeInsets.all(16.0),
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
                searchPopularWidget(),
                searchRecentWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget searchPopularWidget() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: SeenearColor.blue60,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '인기 검색어',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: SeenearColor.grey70,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget searchRecentWidget() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: SeenearColor.blue60,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '최근 검색어',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: SeenearColor.grey70,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
