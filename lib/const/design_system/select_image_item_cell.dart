import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class SelectImageItemCell extends StatelessWidget {
  final bool isSelected;
  final Function()? onTap;

  const SelectImageItemCell({super.key, required this.isSelected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            InkWell(
              onTap: () {
                if (onTap != null) onTap!();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13.0),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Opacity(
                    opacity: isSelected ? 0.5 : 1.0,
                    child: Image.network(
                      'https://picsum.photos/200/300',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            if (isSelected)
              Container(
                width: 24,
                padding: const EdgeInsets.only(right: 6),
                child: CircleAvatar(
                  backgroundColor: SeenearColor.blue80,
                  child: const Icon(
                    Icons.check,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '라이프',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: SeenearColor.grey50),
        ),
      ],
    );
  }
}
