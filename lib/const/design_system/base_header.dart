import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class BaseHeader extends StatelessWidget {
  final String title;

  const BaseHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/back.png',
              width: 28, color: SeenearColor.grey60),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: SeenearColor.grey60),
          ),
          const SizedBox(width: 44,),
        ],
      ),
    );
  }
}
