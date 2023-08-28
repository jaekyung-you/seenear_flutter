import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/design_system/seenear_color.dart';

class SnackBarManager {
  static final SnackBarManager instance = SnackBarManager._internal();

  factory SnackBarManager() => instance;

  SnackBarManager._internal();

  void showSnackBar({required String title}) {
    final getSnackBar = GetSnackBar(
      dismissDirection: DismissDirection.none,
      message: title,
      messageText: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 20,
      margin: const EdgeInsets.all(10.0),
      duration: const Duration(seconds: 2),
      barBlur: 7.0,
      onTap: (_) {
        Get.back();
      },
      backgroundColor: SeenearColor.grey40,
      snackStyle: SnackStyle.FLOATING,
    );

    final controller = SnackbarController(getSnackBar);
    controller.show();
  }
}
