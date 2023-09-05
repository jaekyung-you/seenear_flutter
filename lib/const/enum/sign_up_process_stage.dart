import '../define.dart';

enum SignUpProcessStage {
  region,
  interest,
  interestRegion,
  nickname;

  String get title {
    switch (this) {
      case SignUpProcessStage.region:
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
      case SignUpProcessStage.region:
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

  String get bottomSheetTitle {
    switch (this) {
      case SignUpProcessStage.region:
        return '거주 지역을';
      case SignUpProcessStage.interest:
        return '관심사를';
      case SignUpProcessStage.interestRegion:
        return '관심 지역을';
      default:
        return '';
    }
  }

  List<String> get itemList {
    switch (this) {
      case SignUpProcessStage.region:
      case SignUpProcessStage.interestRegion:
        return Defines.signUpRegionList;
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
      default:
        return [];
    }
  }
}
