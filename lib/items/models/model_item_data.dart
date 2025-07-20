import 'dart:convert';

class ItemData {
  ItemData({
    required this.id,
    required this.title,
    required this.text,
    this.isFavourite = false,
  });

  factory ItemData.fromRawJson(String str) =>
      ItemData.fromJson(json.decode(str));

  factory ItemData.fromJson(Map<String, dynamic> json) => ItemData(
        id: json['id'],
        title: json['title'],
        text: json['text'],
      );

  final String id;
  final String title;
  final String text;
  final bool isFavourite;

  String toRawJson() => json.encode(toJson());

  static String toRawJsonList(List<ItemData> communityList) {
    final List<Map<String, dynamic>> jsonList =
        communityList.map((community) => community.toJson()).toList();
    return json.encode(jsonList);
  }

  Map<String, dynamic> toJson() => {'id': id, 'title': title, 'text': text};

  static List<ItemData> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((item) => ItemData.fromJson(item)).toList();
  }

  static List<ItemData> fromRawJsonList(String str) {
    final List<dynamic> jsonList = json.decode(str);
    return jsonList.map((item) => ItemData.fromJson(item)).toList();
  }
}
