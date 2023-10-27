class Defines {
  static String KAKAO_SDK_KEY = "980f526fc7e4357f48463749fec73ee6";
  static List<String> signUpRegionList = [
    '서울',
    '경기',
    '인천',
    '강원',
    '대전',
    '충북',
    '충남/\n세종',
    '부산',
    '울산',
    '경남',
    '대구',
    '경북',
    '광주',
    '전남',
    '전주/\n전북',
    '제주'
  ];

  // 필터링 걸린 지역들
  static List<String> selectRegionList = [
    '전체',
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

  // 서버 -> 클라이언트로 바꿈
  String convertRegion({required String region, bool showAll = false}) {
    if (region == "서울특별시") {
      return "서울";
    } else if (region == "부산광역시") {
      return "부산";
    } else if (region == "대구광역시") {
      return "대구";
    } else if (region == "인천광역시") {
      return "인천";
    } else if (region == "광주광역시") {
      return "광주";
    } else if (region == "전주광역시") {
      return "전주";
    } else if (region == "대전광역시") {
      return "대전";
    } else if (region == "울산광역시") {
      return "울산";
    } else if (region == "세종특별자치시") {
      return "세종";
    } else if (region == "경기도") {
      return "경기";
    } else if (region == "강원도") {
      return "강원";
    } else if (region == "충청북도") {
      return "충북";
    } else if (region == "충청남도") {
      return "충남";
    } else if (region == "전라북도") {
      return "전북";
    } else if (region == "전라남도") {
      return "전남";
    } else if (region == "경상북도") {
      return "경북";
    } else if (region == "경상남도") {
      return "경남";
    } else if (region == "제주특별자치도") {
      return "제주";
    }
    return showAll ? "전체" : "";
  }

  // 클라이언트 -> 서버로 바꿈
  String convertServerRegion({required String region}) {
    if (region == "서울") {
      return "서울특별시";
    } else if (region == "부산") {
      return "부산광역시";
    } else if (region == "대구") {
      return "대구광역시";
    } else if (region == "인천") {
      return "인천광역시";
    } else if (region == "광주") {
      return "광주광역시";
    } else if (region == "전주") {
      return "전주광역시";
    } else if (region == "울산") {
      return "울산광역시";
    } else if (region == "대전") {
      return "대전광역시";
    } else if (region == "세종") {
      return "세종특별자치시";
    } else if (region == "경기") {
      return "경기도";
    } else if (region == "강원") {
      return "강원도";
    } else if (region == "충북") {
      return "충청북도";
    } else if (region == "충남") {
      return "충청남도";
    }else if (region == "전북") {
      return "전라북도";
    } else if (region == "전남") {
      return "전라남도";
    } else if (region == "경북") {
      return "경상북도";
    } else if (region == "경남") {
      return "경상남도";
    } else if (region == "제주") {
      return "제주특별자치도";
    }
    return "";
  }
}
