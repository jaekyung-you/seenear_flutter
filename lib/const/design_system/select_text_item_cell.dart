import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/rounded_widget.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class SelectTextItemCell extends StatelessWidget {
  final String text;
  final double borderRadius;
  final double fontSize;
  String? badgeText;
  Color? bgColor;
  Color? fgColor;
  final Function()? onTap;

  SelectTextItemCell(
      {super.key,
      required this.text,
      this.bgColor,
      this.fgColor,
      this.badgeText,
      this.borderRadius = 10.0,
      this.fontSize = 20,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13.5, vertical: 18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: bgColor ?? SeenearColor.grey5,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (badgeText != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: RoundedWidget(
                      text: badgeText!,
                      bgColor: SeenearColor.blue40,
                      fgColor: Colors.white),
                ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: fgColor ?? SeenearColor.grey50,
                    fontSize: fontSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
