import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seenear/const/design_system/seenear_color.dart';

enum SubscriptionButtonType {
  unfollow,
  follow,
  block;

  String get title {
    switch (this) {
      case SubscriptionButtonType.unfollow:
        return '구독 취소하기';
      case SubscriptionButtonType.follow:
        return '나도 구독하기';
      case SubscriptionButtonType.block:
        return '구독자 차단하기';
    }
  }

  Color get bgColor {
    switch (this) {
      case SubscriptionButtonType.unfollow:
        return SeenearColor.blue10;
      case SubscriptionButtonType.follow:
        return SeenearColor.blue80;
      case SubscriptionButtonType.block:
        return Colors.white;
    }
  }

  Color get fgColor {
    switch (this) {
      case SubscriptionButtonType.unfollow:
        return SeenearColor.blue80;
      case SubscriptionButtonType.follow:
        return Colors.white;
      case SubscriptionButtonType.block:
        return SeenearColor.red50;
    }
  }

  String get icon {
    switch (this) {
      case SubscriptionButtonType.unfollow:
        return 'assets/images/unfollow.png';
      case SubscriptionButtonType.follow:
        return 'assets/images/add.png';
      case SubscriptionButtonType.block:
        return 'assets/images/delete.png';
    }
  }
}
