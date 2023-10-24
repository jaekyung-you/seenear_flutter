class MemberAddInformationRequest {
  List<String>? interestingAddress;
  List<String>? interestingCategoryList;
  String? myAddressInfo;

  MemberAddInformationRequest({
    required this.interestingAddress,
    required this.interestingCategoryList,
    required this.myAddressInfo,
  });

  Map<String, dynamic> toJson() => {
    'interestingAddress': interestingAddress.toString(),
    'interestingCategoryList': interestingCategoryList.toString(),
    'myAddressInfo': myAddressInfo,
  };
}
