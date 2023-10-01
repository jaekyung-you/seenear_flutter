import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/presentation/search/controller/search_controller.dart';

import '../../../const/design_system/seenear_color.dart';

class SearchDefaultScreen extends StatefulWidget {
  const SearchDefaultScreen({super.key});

  @override
  State<SearchDefaultScreen> createState() => _SearchDefaultScreenState();
}

class _SearchDefaultScreenState extends State<SearchDefaultScreen> {
  late SearchScreenController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(SearchScreenController());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          labelPadding: const EdgeInsets.symmetric(vertical: 6.0),
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
      },
    );
  }
}
