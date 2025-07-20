import 'package:mini_app_task/items/api/api_items.dart';
import 'package:mini_app_task/items/models/model_item_data.dart';

class ItemRepository {
  final ItemsApi _api = ItemsApi();
  Future<List<ItemData>> fetchItems() => _api.fetchItems();
}
