import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

import 'base_button.dart';

class OneButtonBottomSheet extends StatelessWidget {
  final String title;
  final Widget content;
  final String buttonTitle;
  final Function() onTapButton;

  const OneButtonBottomSheet({
    super.key,
    required this.title,
    required this.content,
    required this.buttonTitle,
    required this.onTapButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Colors.white),
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700, color: SeenearColor.grey60),
          ),
          const SizedBox(
            height: 20,
          ),
          content,
          const SizedBox(
            height: 20,
          ),
          BaseButton(
            buttonText: buttonTitle,
            onPressed: () {
              onTapButton();
            },
          ),
        ],
      ),
    );
  }
}
