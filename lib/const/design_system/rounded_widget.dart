import 'package:flutter/material.dart';

class RoundedWidget extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color fgColor;
  final Color? borderColor;
  final String? image;
  final Color? imageColor;
  final IconData? icon;
  final Function()? onTap;

  const RoundedWidget(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.fgColor,
      this.borderColor,
      this.image,
      this.icon,
      this.onTap,
      this.imageColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          borderRadius: BorderRadius.circular(20.0),
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
              style: TextStyle(fontSize: 14, color: fgColor),
            ),
          ],
        ),
      ),
    );
  }
}
