enum SignUpProcessStage {
  residence,
  interest,
  interestRegion,
  nickname;

  String get title {
    switch (this) {
      case SignUpProcessStage.residence:
        return '🏠 거주 지역 선택';
      case SignUpProcessStage.interest:
        return '💜 관심사 선택';
      case SignUpProcessStage.interestRegion:
        return '💜 관심지역 선택';
      case SignUpProcessStage.nickname:
        return '닉네임 입력';
    }
  }

  String get subtitle {
    switch (this) {
      case SignUpProcessStage.residence:
        return '홍길동 님의\n현재 거주 지역은 어디인가요?';
      case SignUpProcessStage.interest:
        return '홍길동 님의\n평소 관심사는 무엇인가요?';
      case SignUpProcessStage.interestRegion:
        return '홍길동 님의\n평소 관심있는 지역은 어디인가요?';
      case SignUpProcessStage.nickname:
        return '사용하고 싶은\n닉네임을 입력해주세요.';
    }
  }

  String? get desc {
    switch (this) {
      case SignUpProcessStage.interest:
      case SignUpProcessStage.interestRegion:
        return '최대 5개 선택 가능';
      case SignUpProcessStage.nickname:
        return '최대 15자, 선택 입력';
      default:
        return null;
    }
  }

  List<String> get itemList {
    switch (this) {
      case SignUpProcessStage.residence:
        return [
          '서울',
          '경기',
          '인천',
          '강원',
          '대전',
          '충북',
          '충남/세종',
          '부산',
          '울산',
          '경남',
          '대구',
          '경북',
          '광주',
          '전남',
          '전주/전북',
          '제주'
        ];
      case SignUpProcessStage.interest:
        return [
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
          '라이프',
        ];
      case SignUpProcessStage.interestRegion:
        return [
          '서울',
          '경기',
          '인천',
          '강원',
          '대전',
          '충북',
          '충남/세종',
          '부산',
          '울산',
          '경남',
          '대구',
          '경북',
          '광주',
          '전남',
          '전주/전북',
          '제주'
        ];
      default:
        return [];
    }
  }
}
