enum CommunityTabType {
  all, follower, my;

  String get title {
    switch (this) {
      case CommunityTabType.all:
        return '전체 글';
      case CommunityTabType.follower:
        return '구독 글';
      case CommunityTabType.my:
        return '내 글';
    }
  }
}