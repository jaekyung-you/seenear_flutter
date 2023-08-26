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

  String get contentTitle {
    switch (this) {
      case MyPageMenu.recentView:
        return '<b>닉네임</b> 님의 최근 본 목록이에요.';
      case MyPageMenu.liked:
        return '<b>닉네임</b> 님의 찜 목록이에요.';
      case MyPageMenu.review:
        return '<b>닉네임</b> 님이 작성하신 리뷰에요.';
      case MyPageMenu.subscription:
        return '<b>닉네임</b> 님의 구독 현황이에요.';
    }
  }

  String? get contentDescription {
    switch (this) {
      case MyPageMenu.recentView:
        return '목록은 10개까지만 보여집니다.';
      case MyPageMenu.liked:
        return '목록은 최근 찜한 순서로 보여요!';
      default:
        return null;
    }
  }

  String get contentEmptyTitle {
    switch (this) {
      case MyPageMenu.recentView:
        return '최근 본 축제/행사가 없어요';
      case MyPageMenu.liked:
        return '찜한 축제/행사가 없어요';
      case MyPageMenu.review:
        return '작성하신 리뷰가 없어요';
      case MyPageMenu.subscription:
        return '구독중인 사람이 없어요';
    }
  }

  List<String> get contentTabTitle {
    switch (this) {
      case MyPageMenu.subscription:
        return ['내가 구독한 사람', '나를 구독한 사람'];
      default:
        return ['전통시장', '축제/행사'];
    }
  }
}