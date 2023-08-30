import 'package:flutter/material.dart';

class RoundedWidget extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color fgColor;
  final Color? borderColor;
  final double borderRadius;
  final String? image;
  final Color? imageColor;
  final IconData? icon;
  final double horizontalPadding;
  final Function()? onTap;

  const RoundedWidget(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.fgColor,
      this.borderColor,
        this.borderRadius = 20.0,
      this.image,
      this.icon,
      this.horizontalPadding = 8,
      this.onTap,
      this.imageColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 4.0),
        decoration: BoxDecoration(
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          borderRadius: BorderRadius.circular(borderRadius),
          color: bgColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null)
              Image.asset(
                image!,
                width: 16,
                color: imageColor,
              ),
            if (icon != null)
              Icon(
                icon,
                size: 16,
                color: imageColor,
              ),
            Text(
              text,
              style: TextStyle(fontSize: 14, color: fgColor, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
