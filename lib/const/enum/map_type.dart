enum MapType {
  kakaoMap,
  tMap,
  naverMap;

  String get title {
    switch (this) {
      case MapType.kakaoMap:
        return '카카오 맵';
      case MapType.tMap:
        return 'T맵';
      case MapType.naverMap:
        return '네이버 맵';
    }
  }

  String get url {
    switch (this) {
        // "kakaomap://route?ep=\(lat),\(lng)&by=CAR"
      case MapType.kakaoMap:
        return 'kakaomap://route?';

        // "tmap://route?rGoName=목적지&rGoX=\(lng)&rGoY=\(lat)"
      case MapType.tMap:
        return 'tmap://route?';

        // "nmap://route/car?dlat=\(lat)&dlng=\(lng)&appname=com.example.myApp"
      case MapType.naverMap:
        return 'nmap://route/car?';
    }
  }

  // 해당 앱이 없을 경우, 앱스토어로 보내는 url
  String get appstoreUrl {
    switch (this) {
      case MapType.kakaoMap:
        return 'itms-apps://itunes.apple.com/app/id304608425';
      case MapType.tMap:
        return 'http://itunes.apple.com/app/id431589174';
      case MapType.naverMap:
        return 'http://itunes.apple.com/app/id311867728?mt=8';
    }
  }

  // 해당 앱이 없을 경우, 구글 플레이스토어로 보내는 url
  // https://play.google.com/store/apps/details?id=net.daum.android.map
  String get playstoreUrl {
    switch (this) {
      case MapType.kakaoMap:
        return 'market://details?id=net.daum.android.map';
      case MapType.tMap:
        return 'market://details?id=com.skt.tmap.ku';
      case MapType.naverMap:
        return 'market://details?id=com.nhn.android.nmap';
    }
  }
}