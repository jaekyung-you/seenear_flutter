import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class BaseButton extends StatefulWidget {
  final String buttonText;
  final Color? bgColor;
  final Color? fgColor;
  final double? height;
  final bool isDisabled;
  final Function() onPressed;

  const BaseButton(
      {super.key,
      required this.buttonText,
      this.bgColor,
      this.fgColor,
      this.height,
      required this.isDisabled,
      required this.onPressed});

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        shadowColor: Colors.transparent,
        fixedSize: Size(double.maxFinite, widget.height ?? 58),
        foregroundColor: widget.fgColor ?? Colors.white,
        backgroundColor: widget.bgColor ??
            (widget.isDisabled ? SeenearColor.grey10 : SeenearColor.blue80),
      ),
      onPressed: () {
        if (widget.isDisabled) return;
        widget.onPressed();
      },
      child: Text(
        widget.buttonText,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }
}
