import 'package:flutter/foundation.dart';
import 'package:mini_app_task/items/models/model_global_repsonse.dart';
import 'package:mini_app_task/items/models/model_item_data.dart';

class ItemsApi {
  Future<List<ItemData>> fetchItems() async {
    try {
      await Future.delayed(const Duration(seconds: 3));

      GlobalResponse response = GlobalResponse(statusCode: 200);
      if (response.statusCode != 200) {
        return [];
      }

      List<ItemData> items = ItemData.fromRawJsonList(testData);
      return items;
    } catch (e) {
      if (kDebugMode) {
        print('API Error: $e');
      }
      return [];
    }
  }

  final String testData = '''
    [
      {
        "id": "item-1",
        "title": "Title 1",
        "text": "Text 1"
      },
      {
        "id": "item-2",
        "title": "Title 2",
        "text": "Text 2"
      },
      {
        "id": "item-3",
        "title": "Title 3",
        "text": "Text 3"
      }
    ]
    ''';
}
