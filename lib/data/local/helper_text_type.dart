import 'dart:ui';

import 'package:seenear/const/design_system/seenear_color.dart';

class HelperTextType {
  final bool isError;
  final String helperText;

  HelperTextType({required this.isError, required this.helperText});

  Color getHelperTextColor() {
    return isError ? SeenearColor.red50 : SeenearColor.blue60;
  }

  String getHelperText() {
    return helperText;
  }
}