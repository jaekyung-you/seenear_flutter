import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
}
