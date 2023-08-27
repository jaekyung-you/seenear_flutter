enum OtherProfileTabMenu {
  review,
  community;

  String get title {
    switch (this) {
    case OtherProfileTabMenu.review:
      return '리뷰 게시물';
    case OtherProfileTabMenu.community:
      return '자유 글 게시물';
    }
  }
}