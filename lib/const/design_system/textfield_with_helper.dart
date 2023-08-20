import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';
import 'package:seenear/data/local/helper_text_type.dart';

class TextFieldWithHelperText extends StatefulWidget {
  final TextEditingController editingController;
  final String hintText;
  final HelperTextType helperTextType;

  const TextFieldWithHelperText(
      {super.key,
      required this.editingController,
      required this.hintText,
      required this.helperTextType});

  @override
  State<TextFieldWithHelperText> createState() =>
      _TextFieldWithHelperTextState();
}

class _TextFieldWithHelperTextState extends State<TextFieldWithHelperText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: widget.editingController,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: widget.helperTextType.getHelperTextColor(), width: 2),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(fontSize: 20, color: SeenearColor.grey30),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.helperTextType.getHelperText(),
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: widget.helperTextType.getHelperTextColor()),
        )
      ],
    );
  }
}
