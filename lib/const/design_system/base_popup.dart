import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/base_button.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

class BasePopup extends StatelessWidget {
  final String title;
  final String desc;
  final List<String> buttonTitles;
  final Function(int) onTap;

  const BasePopup({
    super.key,
    required this.title,
    required this.desc,
    required this.buttonTitles,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      insetPadding: const EdgeInsets.all(20.0),
      elevation: 0,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: SeenearColor.grey80,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, color: SeenearColor.grey80, fontSize: 15),
            ),
            const SizedBox(
              height: 6,
            ),
            Column(
              children: [
                for (var i = 0; i < buttonTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BaseButton(
                      buttonText: buttonTitles[i],
                      bgColor: buttonTitles.length - 1 == i ? SeenearColor.grey10 : null,
                      fgColor: buttonTitles.length - 1 == i ? SeenearColor.grey30 : null,
                      onPressed: () {
                        onTap(i);
                      },
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
