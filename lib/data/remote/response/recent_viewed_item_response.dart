class RecentViewedItemResponse {
  String date;
  int id;
  String imageSrc;
  int itemId;
  String itemType;
  String name;
  int reviewCount;
  int score;

  RecentViewedItemResponse({
    required this.date,
    required this.id,
    required this.imageSrc,
    required this.itemId,
    required this.itemType,
    required this.name,
    required this.reviewCount,
    required this.score,
  });

  factory RecentViewedItemResponse.fromJson(Map<String, dynamic> json) {
    return RecentViewedItemResponse(
      date: json['date'],
      id: json['id'],
      imageSrc: json['imageSrc'],
      itemId: json['itemId'],
      itemType: json['itemType'],
      name: json['name'],
      reviewCount: json['reviewCount'],
      score: json['score'],
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'id': id,
        'imageSrc': imageSrc,
        'itemId': itemId,
        'itemType': itemType,
        'name': name,
        'reviewCount': reviewCount,
        'score': score,
      };
}
