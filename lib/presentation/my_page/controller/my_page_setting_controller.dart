import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/base_bottom_sheet.dart';
import 'package:seenear/data/local/helper_text_type.dart';
import 'package:seenear/data/remote/api/member/check_nickname_duplicate.dart';
import 'package:seenear/data/remote/api/edit_my_profile.dart';
import 'package:seenear/data/remote/api/get_sign_out_reasons.dart';
import 'package:seenear/data/remote/api/logout.dart';
import 'package:seenear/data/remote/api/sign_out_account.dart';
import 'package:seenear/domain/util/snack_bar_manager.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/deactive_account_screen.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/deactive_complete_screen.dart';
import 'package:seenear/presentation/my_page/widget/my_setting_menu/nickname_edit_screen.dart';
import '../../../data/local/member.dart';
import '../../../data/remote/api/get_my_profile.dart';
import '../../../data/remote/response/member_detail_response.dart';
import '../../../data/remote/response/sign_out_reason_list.dart';

class MyPageSettingController extends GetxController {
  // property
  RxString loginType = ''.obs;
  RxString nickname = ''.obs;
  RxString profileImageSrc = ''.obs;
  RxBool enableChangeButton = false.obs; // 변경완료 버튼 활성화 여부

  TextEditingController nicknameEditController = TextEditingController();
  Rx<HelperTextType> helperTextType = HelperTextType(isError: false, helperText: '').obs;

  List<String> noticeList = [];

  RxList<SignOutReason> signOutReasonList = <SignOutReason>[].obs;
  RxList<SignOutReason> selectedReasons = <SignOutReason>[].obs;
  TextEditingController customReasonInputController = TextEditingController();
  FocusNode focusNode = FocusNode();

  Map<String, RxBool> notificationSwitchList = {
    '모든 알림 허용': false.obs,
    '공지사항 알림': false.obs,
    '후기 댓글 알림': false.obs,
    '업데이트 알림': false.obs,
    '마케팅 수신 알림': false.obs,
  };

  // usecase
  final CheckNicknameDuplicate _checkNickname = CheckNicknameDuplicate();
  final EditMyProfile _editMyProfile = EditMyProfile();

  final Logout _logout = Logout();
  final GetMyProfile _getMyProfile = GetMyProfile();

  final GetSignOutReasons _getSignOutReasons = GetSignOutReasons();
  final SignOutAccount _signOutAccount = SignOutAccount();

  @override
  void onInit() {
    super.onInit();
    _requestMyProfile();
  }

  @override
  void dispose() {
    super.dispose();
    selectedReasons.clear();
  }

  void setNicknameTextField() {
    nicknameEditController.text = Member().nickname ?? ''; // 본래 유저의 닉네임
    nicknameEditController.addListener(() {
      String input = nicknameEditController.text.trim();
      helperTextType.value = HelperTextType(isError: input.isEmpty, helperText: input.isEmpty ? '닉네임을 입력해주세요' : '');
      enableChangeButton.value = input.isNotEmpty && (input != Member().nickname);
    });
  }

  Future<void> _requestMyProfile() async {
    MemberDetailResponse res = await _getMyProfile();
    nickname.value = res.nickname;
    loginType.value = res.loginType == 'KAKAO' ? '카카오로그인' : '';
    profileImageSrc.value = res.profileImageSrc ?? '';
  }

  void onTapEditProfileImage() {}

  void onTapEditNickname() {
    Get.to(() => const NicknameEditScreen());
  }

  Future<void> onTapFinishEditNickname() async {
    String nickname = nicknameEditController.text.trim();
    if (nickname.isEmpty || !enableChangeButton.value) return;

    bool res = await _checkNickname(nickname: nickname);
    if (res) {
      // helperText 보여준 다음 0.5초 뒤에 닉네임 변경 확인 바텀 시트
      helperTextType.value = HelperTextType(isError: false, helperText: '사용 가능한 닉네임이에요.');
      Future.delayed(const Duration(milliseconds: 500), () {
        Get.bottomSheet(
          BaseBottomSheet(
            title: '닉네임 변경을 완료하시겠어요?',
            desc: '완료 이후 변경된 닉네임으로 적용됩니다.',
            buttonTitles: const ['아니요', '완료'],
            onTapButton: (index) {
              Get.back();
              if (index == 1) {
                _requestEditNickname(nickname: nickname);
              }
            },
          ),
        );
      });
    } else {
      helperTextType.value = HelperTextType(isError: true, helperText: '이미 사용중인 닉네임이에요.\n다른 닉네임을 입력해주세요.');
    }
  }

  Future<void> _requestEditNickname({required String nickname}) async {
    final res = await _editMyProfile(nickname: nickname);
    if (res) {
      Member().nickname = nickname;
      SnackBarManager().showSnackBar(title: '닉네임 변경이 완료되었습니다.');
    } else {
      SnackBarManager().showSnackBar(title: '오류가 발생했습니다.');
    }
  }

  void onTapDeactiveAccount() {
    Get.to(() => const DeactiveAccountScreen());
  }

  void onTapFinishDeactiveAccount() {
    Get.bottomSheet(
      BaseBottomSheet(
        title: '정말 탈퇴 하시겠어요?',
        desc: '탈퇴시 회원님의 모든 정보는 즉시 폐기됩니다.',
        buttonTitles: const ['아니요', '탈퇴 완료'],
        onTapButton: (index) async {
          Get.back();
          if (index == 1) {
            bool res = await _requestSignOut();
            if (!res) return;
            Get.to(() => const DeactiveCompleteScreen());
          }
        },
      ),
    );
  }

  void onTapDeactivateReason(SignOutReason reason) {
    if (selectedReasons.contains(reason)) {
      selectedReasons.remove(reason);
    } else {
      selectedReasons.add(reason);
    }
  }

  /// 탈퇴
  Future<void> requestSignOutReason() async {
    SignOutReasonList res = await _getSignOutReasons();
    signOutReasonList.value = res.data;
  }

  Future<bool> _requestSignOut() async {
    String additionalInformation = customReasonInputController.text.trim();
    List<String> type = selectedReasons.map((e) => e.code).toList();
    bool res = await _signOutAccount(additionalInformation: additionalInformation, type: type);
    return res;
  }
}
