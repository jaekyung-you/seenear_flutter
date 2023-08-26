enum MyPageMenu {
  recentView,
  liked,
  review,
  subscription;

  String get title {
    switch (this) {
    case MyPageMenu.recentView:
      return '최근 본 목록';
    case MyPageMenu.liked:
      return '찜 목록';
    case MyPageMenu.review:
      return '리뷰 관리';
    case MyPageMenu.subscription:
      return '구독 관리';
    }
  }

  String get icon {
    switch (this) {
      case MyPageMenu.recentView:
        return 'assets/images/recent.png';
      case MyPageMenu.liked:
        return 'assets/images/favorite.png';
      case MyPageMenu.review:
        return 'assets/images/review.png';
      case MyPageMenu.subscription:
        return 'assets/images/subscription.png';
    }
  }
}