enum MyPageSetting {
  account,
  notice,
  helpdesk,
  notification;

  String get title {
    switch (this) {
      case MyPageSetting.account:
        return '계정 관리';
      case MyPageSetting.notice:
        return '공지사항';
      case MyPageSetting.helpdesk:
        return '고객센터';
      case MyPageSetting.notification:
        return '알림 설정하기';
    }
  }
}
