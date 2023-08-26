import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class BaseHeader extends StatelessWidget {
  final String title;
  final Function()? onTapBack;

  const BaseHeader({super.key, required this.title, this.onTapBack});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              if (onTapBack != null) {
                onTapBack!();
              } else {
                Get.back();
              }
            },
            child: Image.asset('assets/images/back.png', width: 28, color: SeenearColor.grey60),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: SeenearColor.grey60),
              ),
            ),
          ),
          const SizedBox(
            width: 44,
          ),
        ],
      ),
    );
  }
}
