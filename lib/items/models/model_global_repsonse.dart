import 'dart:convert';

class GlobalResponse {
  GlobalResponse({
    required this.statusCode,
    this.data,
    this.metadata,
  });

  factory GlobalResponse.fromRawJson(int statusCode, String str) =>
      GlobalResponse.fromJson(statusCode, json.decode(str));

  factory GlobalResponse.fromJson(int statusCode, Map<String, dynamic> json) =>
      GlobalResponse(
        statusCode: statusCode,
        data: json['data'],
        metadata: json['metadata'],
      );

  final int statusCode;
  final dynamic data;
  final dynamic metadata;
}
