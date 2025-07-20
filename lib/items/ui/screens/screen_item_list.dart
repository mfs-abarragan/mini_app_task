import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_app_task/items/providers/provider_item_list.dart';
import 'package:mini_app_task/items/ui/widgets/expandible_item.dart';

class ItemListScreen extends ConsumerWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(itemListFutureProvider);

    return Scaffold(
      body: provider.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ExpandibleItem(itemData: data[index]);
            },
          );
        },
        loading: () => const Center(
          child: Text('Loading...'),
        ),
        error: (err, stack) => const Center(
          child: Text('Oops! There was an error :('),
        ),
      ),
    );
  }
}
