import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

import 'base_button.dart';

class BaseBottomSheet extends StatelessWidget {
  final String title;
  final String? desc;
  final List<String> buttonTitles;
  final Function(int)? onTapButton;

  const BaseBottomSheet({super.key, required this.title, this.desc, required this.buttonTitles, this.onTapButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Colors.white),
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700, color: SeenearColor.grey60),
          ),
          if (desc != null)
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(desc!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: SeenearColor.grey50),),
            ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: BaseButton(
                  bgColor: SeenearColor.blue10,
                  fgColor: SeenearColor.blue80,
                  buttonText: buttonTitles[0],
                  onPressed: () {
                    onTapButton!(0);
                  },
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: BaseButton(
                  buttonText: buttonTitles[1],
                  onPressed: () {
                    onTapButton!(1);
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
