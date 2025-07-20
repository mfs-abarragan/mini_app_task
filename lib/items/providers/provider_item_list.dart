import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_app_task/items/models/model_item_data.dart';
import 'package:mini_app_task/items/repository/repository_item.dart';

ItemRepository _repository = ItemRepository();

final itemListFutureProvider =
    FutureProvider<List<ItemData>>((ref) => _repository.fetchItems());
