

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

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

  }
}