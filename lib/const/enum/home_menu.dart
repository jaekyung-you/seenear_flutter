enum HomeMenu {
  myInfo,
  market,
  community,
  festival;

  String get title {
    switch (this) {
      case HomeMenu.myInfo:
        return '내 정보';
      case HomeMenu.market:
        return '전국장날';
      case HomeMenu.community:
        return '이모저모\n이야기방';
      case HomeMenu.festival:
        return '축제/행사';
    }
  }

  static HomeMenu convert(String mainName) {
    if (mainName == "전국 장날") {
      return HomeMenu.market;
    } else if (mainName == "내 정보") {
      return HomeMenu.myInfo;
    } else if (mainName == "이야기 방") {
      return HomeMenu.community;
    }
    return HomeMenu.festival;
  }
}
