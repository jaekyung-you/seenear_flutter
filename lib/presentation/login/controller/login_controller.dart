import 'package:get/get.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import '../../../const/seenear_path.dart';
import '../../../data/remote/api/setting/login.dart';

class LoginController extends GetxController {
  User? user; // kakao_sdk에서 제공하는 사용자 정보
  bool isLogined = false;

  // usecase
  final Login _login = Login();

  Future<void> onTapLogin() async {
    isLogined = await _loginWithKakao();
    if (isLogined) {
      user = await UserApi.instance.me();
      if (user == null) return;
      await _login(user: user!);
      print("user: $user");
      Get.toNamed(SeenearPath.SIGN_UP);
    }
  }

  Future<bool> _loginWithKakao() async {
    // 토큰 존재 여부 코드 추가
    if (await AuthApi.instance.hasToken()) {
      try {
        AccessTokenInfo tokenInfo = await UserApi.instance.accessTokenInfo();
        // todo: 우리 서버에 쏴야하는지 확인 & 자동 로그인?
        print("⭕ 토큰 유효성 체크 성공: ${tokenInfo.id} ${tokenInfo.expiresIn}");
        return true;
      } catch (error) {
        if (error is KakaoException && error.isInvalidTokenError()) {
          print("❌ 토큰 만료: $error");
        } else {
          print("❌ 토큰 정보 조회 실패: $error");
        }
      }

      try {
        // 카카오톡 설치 여부 확인 -> 카카오톡 어플로 열기
        bool isInstalled = await isKakaoTalkInstalled();
        if (isInstalled) {
          try {
            // todo: 우리 서버에 쏴야하는지 확인
            OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
            print("⭕ 로그인 성공: ${token.accessToken}");
            return true;
          } catch (error) {
            print("❌ 로그인 실패: $error");
            return false;
          }
        } else {
          // 카카오톡 설치 여부 확인 -> 웹 브라우저로 열기
          try {
            OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
            print("⭕ 로그인 성공: ${token.accessToken}");
            return true;
          } catch (error) {
            print("❌ 로그인 실패: $error");
            return false;
          }
        }
      } catch (e) {
        return false;
      }
    } else {
      print('발급된 토큰 없음');
      try {
        OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
        print("⭕ 로그인 성공 ${token.accessToken}");
        return true;
      } catch (error) {
        print("❌ 로그인 실패 $error");
        return false;
      }
    }
  }
}
