import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class EmptyView extends StatelessWidget {
  final String text;

  const EmptyView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/seenear_character_4.png',
          width: 70,
        ),
        const SizedBox(height: 8,),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: SeenearColor.grey30),
        ),
      ],
    );
  }
}
