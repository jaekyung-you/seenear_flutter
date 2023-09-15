class SignOutReasonList {
  List<SignOutReason> data;

  SignOutReasonList({required this.data});

  factory SignOutReasonList.fromJson(Map<String, dynamic> json) {
    return SignOutReasonList(
      data: json['categoryList'].map((e) => SignOutReason.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data.map((e) => e.toJson()).toList(),
      };
}

class SignOutReason {
  String code;
  String displayText;
  String suggestion;

  SignOutReason({required this.code, required this.displayText, required this.suggestion});

  factory SignOutReason.fromJson(Map<String, dynamic> json) {
    return SignOutReason(
      code: json['code'],
      displayText: json['displayText'],
      suggestion: json['suggestion'],
    );
  }

  Map<String, dynamic> toJson() => {
        'code': code,
        'displayText': displayText,
        'suggestion': suggestion,
      };
}
