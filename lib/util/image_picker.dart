import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seenear/const/design_system/base_popup.dart';

class ImagePicker {
  ImagePicker._privateConstructor();

  static final ImagePicker _instance = ImagePicker._privateConstructor();

  factory ImagePicker() {
    return _instance;
  }

  Future<void> _checkPermission() async {
    // os 팝업 -> 설정 권한에 추가됨
    await Permission.photos.request();

    PermissionStatus status = await Permission.photos.status;

    if (status.isGranted) {
      // todo: 포토 라이브러리 열기
      return;
    }

    // todo: androidSdk 32 이하 추가 대응
  }

  void showPermissionPopup() {
    // todo: ios info.plist 설정
    // 1. App Transparency
    // 2. permission description
    Get.dialog(
      BasePopup(
        title: '설정 권한 안내',
        desc: '사용자의 사진에 접근하기 위해서\n권한 설정이 필요합니다.',
        buttonTitles: const ['설정으로 이동', '닫기'],
        onTap: (int index) async {
          Get.back();
          if (index == 0) {
            await openAppSettings();
          }
        },
      ),
    );
  }
}
