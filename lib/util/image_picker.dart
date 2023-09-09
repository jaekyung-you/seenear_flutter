import 'dart:html';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:seenear/const/design_system/base_popup.dart';

class ImagePicker {
  ImagePicker._privateConstructor();

  static final ImagePicker _instance = ImagePicker._privateConstructor();

  factory ImagePicker() {
    return _instance;
  }

  Future<bool> _checkPermission() async {
    // os 팝업 -> 설정 권한에 추가됨
    await Permission.photos.request();

    PermissionStatus photoStatus = await Permission.photos.status;
    PermissionStatus storageStatus = await Permission.storage.status;

    // ios는 사진 권한만 검사하고 끝
    if (GetPlatform.isIOS) {
      if (photoStatus.isGranted) {
        return true;
      }
      await _showPermissionPopup();
      return false;
    }

    if (GetPlatform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      // sdk 32 상위 버전이면 사진 권한 검사만 하고 끝
      if (androidInfo.version.sdkInt > 32) {
        if (photoStatus.isGranted) {
          return true;
        }
        await _showPermissionPopup();
        return false;
      }
      // sdk 32 이하면, storage 권한 체크도 해줘야 한다.
      await Permission.storage.request();
      storageStatus = await Permission.storage.status;

      if (storageStatus.isGranted && photoStatus.isGranted) {
        return true;
      }
      await _showPermissionPopup();
      return false;
    }

    await _showPermissionPopup();
    return false;
  }

  Future<void> _showPermissionPopup() async {
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
