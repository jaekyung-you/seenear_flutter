import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_bottom_sheet.dart';
import 'package:seenear/domain/util/snack_bar_manager.dart';

class HelpDeskController extends GetxController {
  List<String> helpKeyword = [
    '상담',
    '시장 찾기',
    '게시글 삭제',
    '공지사항',
    '알림',
    '후기',
    '로그인',
  ];
  List<String> topFiveQuestionList = [];
  TextEditingController searchInputController = TextEditingController();
  TextEditingController phoneInputController = TextEditingController();
  RxList<String> searchResultList = <String>["1"].obs;

  TextEditingController inquiryTitleInputController = TextEditingController();
  TextEditingController inquiryContentInputController = TextEditingController();

  void onTapCompleteButton() {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '작성을 완료하시겠어요?',
        desc: '답변은 영업일 기준 2~3일 정도 소요됩니다.',
        buttonTitles: const ['아니요', '작성 완료'],
        onTapButton: (index) async {
          Get.back();
          if (index == 1) {
            // todo: 작성 제출
            Get.back();
            SnackBarManager().showSnackBar(title: '1:1 문의 작성이 완료 되었습니다.');
          }
        },
      ),
    );
  }
}
