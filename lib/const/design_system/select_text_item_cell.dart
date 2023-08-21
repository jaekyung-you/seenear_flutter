import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class SelectTextItemCell extends StatelessWidget {
  final String text;
  Color? bgColor;
  Color? fgColor;
  final Function()? onTap;

  SelectTextItemCell(
      {super.key, required this.text, this.bgColor, this.fgColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13.5, vertical: 18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: bgColor ?? SeenearColor.grey5,
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: fgColor ?? SeenearColor.grey50, fontSize: 20),
        ),
      ),
    );
  }
}
