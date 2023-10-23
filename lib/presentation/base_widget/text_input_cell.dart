import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class TextInputCell extends StatelessWidget {
  const TextInputCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: SeenearColor.grey20,
          height: 0.5,
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '댓글을 남겨보세요',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: SeenearColor.grey30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              BaseButton(buttonText: '등록', onPressed: () {}),
            ],
          ),
        )
      ],
    );
  }
}
