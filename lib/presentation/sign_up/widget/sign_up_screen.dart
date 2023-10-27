import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/base_header.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/const/design_system/select_image_item_cell.dart';
import 'package:seenear/const/design_system/select_text_item_cell.dart';
import 'package:seenear/const/design_system/textfield_with_helper.dart';
import 'package:seenear/const/enum/sign_up_process_stage.dart';
import 'package:seenear/presentation/base_widget/seenear_base_scaffold.dart';
import 'package:seenear/presentation/sign_up/controller/sign_up_controller.dart';
import '../../../const/define.dart';

// GetPage에서 put했으니 GetView사용해도 될 듯 (이미 put되어야함, GetView는 find하는 wrapper)
class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeenearBaseScaffold(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseHeader(
                  title: controller.currentStage.value.title,
                  onTapBack: () {
                    controller.onTapBack();
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  controller.currentStage.value.subtitle,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: SeenearColor.grey70),
                ),
                if (controller.currentStage.value.desc != null)
                  Text(
                    controller.currentStage.value.desc!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: SeenearColor.grey50),
                  ),
                const SizedBox(
                  height: 22,
                ),
                Expanded(child: contentView()
                ),
                const SizedBox(
                  height: 20,
                ),
                buttonArea(),
              ],
            );
          })
      ),
    );
  }

  Widget contentView() {
    // 거주 지역, 관심지역/관심사 선택
    int itemCount =
    controller.currentStage.value == SignUpProcessStage.interest ? controller.interestList.length : Defines.signUpRegionList.length;

    switch (controller.currentStage.value) {
      case SignUpProcessStage.region:
      case SignUpProcessStage.interest:
      case SignUpProcessStage.interestRegion:
        return GridView.builder(
          itemCount: itemCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
            childAspectRatio: controller.currentStage.value == SignUpProcessStage.interest ? 80 / 103 : 1,
            mainAxisSpacing: 30, //수평 Padding
            crossAxisSpacing: 30, //수직 Padding
          ),
          itemBuilder: (context, index) {
            switch (controller.currentStage.value) {
            // 1. 거주 지역
              case SignUpProcessStage.region:
                return Obx(() {
                  return SelectTextItemCell(
                    fgColor: controller.selectedRegion.value == Defines.signUpRegionList[index] ? Colors.white : SeenearColor.grey50,
                    bgColor: controller.selectedRegion.value == Defines.signUpRegionList[index] ? SeenearColor.blue60 : SeenearColor.grey5,
                    text: Defines.signUpRegionList[index],
                    onTap: () {
                      controller.selectedRegion.value = Defines.signUpRegionList[index];
                    },
                  );
                });

            // 2. 관심사 (최대 5개)
              case SignUpProcessStage.interest:
                return Obx(() {
                  return SelectImageItemCell(
                    isSelected: controller.selectedInterest.contains(controller.interestList[index]),
                    imageUrl: controller.interestList[index].imageSrc,
                    title: controller.interestList[index].displayText,
                    onTap: () {
                      controller.selectListUpToFive(item: controller.interestList[index], isInterest: true);
                    },
                  );
                });

            // 3. 관심지역 (최대 5개)
              case SignUpProcessStage.interestRegion:
                return Obx(() {
                  return SelectTextItemCell(
                    fgColor: controller.selectedRegionList.contains(Defines.signUpRegionList[index]) ? Colors.white : SeenearColor.grey50,
                    bgColor: controller.selectedRegionList.contains(Defines.signUpRegionList[index])
                        ? SeenearColor.blue60
                        : SeenearColor.grey5,
                    text: Defines.signUpRegionList[index],
                    onTap: () {
                      controller.selectListUpToFive(item: Defines.signUpRegionList[index], isInterest: false);
                    },
                  );
                });

              default:
                return Container();
            }
          },
        );
      case SignUpProcessStage.nickname:
        return TextFieldWithHelperText(
          editingController: controller.nicknameController,
          hintText: '닉네임 입력',
          helperTextType: controller.helperTextType,
        );
    }
  }

  Widget buttonArea() {
    return Column(
      children: [
        BaseButton(
            buttonText: '선택 완료',
            isDisabled: false,
            onPressed: () {
              controller.moveToNextStage();
            }),
        InkWell(
          onTap: () {
            if (controller.currentStage.value != SignUpProcessStage.nickname) {
              controller.onTapSkipPage();
            } else {
              controller.useKakaoName();
            }
          },
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.currentStage.value != SignUpProcessStage.nickname ? '건너뛰기' : '카카오톡 이름 사용하기',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: SeenearColor.grey30),
                ),
                Image.asset(
                  'assets/images/arrow_right.png',
                  color: SeenearColor.grey30,
                  width: 20,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
