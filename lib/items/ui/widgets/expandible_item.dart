import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_app_task/items/controller/controller_item.dart';
import 'package:mini_app_task/items/models/model_item_data.dart';

class ExpandibleItem extends ConsumerWidget {
  final ItemData itemData;

  const ExpandibleItem({
    super.key,
    required this.itemData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(singleItemProvider(itemData));
    final controller = ref.read(singleItemProvider(itemData).notifier);

    bool isExpanded = provider.value?.isExpanded ?? false;
    bool isFavourite = provider.value?.isFavourite ?? false;

    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(itemData.title),
            trailing: InkWell(
              onTap: () => controller.toggleTile(),
              child: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
            ),
          ),
          Visibility(
            visible: isExpanded,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(itemData.text),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: InkWell(
                      onTap: () => controller.toggleFavourite(),
                      child: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
