import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/my_page/controller/my_page_setting_controller.dart';

import '../../../../const/design_system/seenear_color.dart';

class NotificationScreen extends GetView<MyPageSettingController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BaseHeader(title: '알림 설정'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Text(
              '아래 버튼을 클릭하여\n각각의 알림을 ON/OFF 하실 수 있어요.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: SeenearColor.grey50,
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
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return notificationCell(
                    isAll: index == 0,
                    title: controller.notificationSwitchList.keys.elementAt(index),
                    isOn: controller.notificationSwitchList.values.elementAt(index),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget notificationCell({required bool isAll, required String title, required RxBool isOn}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      height: 54,
      child: Row(
        children: [
          if (!isAll)
            const SizedBox(
              width: 16,
            ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: SeenearColor.grey60),
          ),
          const Spacer(),
          Obx(() {
            return CupertinoSwitch(
              value: isOn.value,
              activeColor: isAll ? SeenearColor.blue80 : SeenearColor.blue40,
              trackColor: SeenearColor.grey20,
              onChanged: (bool value) {
                isOn.value = value;
              },
            );
          }),
        ],
      ),
    );
  }
}
