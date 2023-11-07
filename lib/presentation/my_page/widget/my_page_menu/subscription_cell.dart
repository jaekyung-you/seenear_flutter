import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/rounded_widget.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/enum/subscription_button_type.dart';
import 'package:seenear/presentation/base_widget/circle_profile_image.dart';
import 'package:seenear/presentation/my_page/controller/my_page_menu_controller.dart';
import '../../../../const/enum/my_page_menu.dart';
import '../../../../const/seenear_path.dart';

class SubscriptionCell extends GetView<MyPageMenuController> {
  final bool isFollowing; // true: '내가 구독한 사람'
  final bool isMatched; // 서로 구독중인 경우
  final int memberId;

  const SubscriptionCell({super.key, required this.isFollowing, required this.isMatched, required this.memberId});

  @override
  Widget build(BuildContext context) {
    List<SubscriptionButtonType> buttons = [];

    // todo: 기획상 버튼 기준 재정의 필요
    if (isFollowing) {
      buttons = [SubscriptionButtonType.unfollow];
    } else {
      buttons.addAll([SubscriptionButtonType.block, isMatched ? SubscriptionButtonType.follow : SubscriptionButtonType.unfollow]);
    }

    return InkWell(
      onTap: () {
        Get.toNamed(SeenearPath.OTHER_PROFILE, arguments: {'userId': 0});
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        height: 90,
        child: Row(
          children: [
            CircleProfileImage(imageUrl: null, width: 64),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '닉네임',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: SeenearColor.grey70),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      if (isMatched)
                        Text(
                          '서로 구독중',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: SeenearColor.blue60),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      for (SubscriptionButtonType button in buttons)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: RoundedWidget(
                            text: button.title,
                            bgColor: button.bgColor,
                            borderColor: button == SubscriptionButtonType.block ? button.fgColor : null,
                            fgColor: button.fgColor,
                            image: button.icon,
                            imageColor: button.fgColor,
                            onTap: () {
                              if (button == SubscriptionButtonType.unfollow) {
                                controller.onDeleteItem(menu: MyPageMenu.subscription, itemId: 1, itemType: '');
                              }

                              if (button == SubscriptionButtonType.block) {
                                controller.onTapBlockFollower(memberId: memberId);
                              }

                              if (button == SubscriptionButtonType.follow) {
                                controller.onTapAddFollower(memberId: memberId);
                              }
                            },
                          ),
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
