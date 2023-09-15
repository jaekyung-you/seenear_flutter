import 'package:seenear/data/remote/response/member_response.dart';

class HealthCheckResponse {
  String accessToken; // 발급받은 토큰
  bool member;
  MemberResponse memberView;

  HealthCheckResponse({required this.accessToken, required this.member, required this.memberView});

  factory HealthCheckResponse.fromJson(Map<String, dynamic> json) {
    return HealthCheckResponse(
      accessToken: json['accessToken'],
      member: json['member'],
      memberView: MemberResponse.fromJson(json['memberView']),
    );
  }

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'member': member,
        'memberView': memberView.toJson(),
      };
}
