enum CommunityFilterType {
  recent, like, comment;

  String get title {
    switch (this) {
      case CommunityFilterType.recent:
        return '최신순';
      case CommunityFilterType.like:
        return '공감순';
      case CommunityFilterType.comment:
        return '댓글순';
    }
  }
}