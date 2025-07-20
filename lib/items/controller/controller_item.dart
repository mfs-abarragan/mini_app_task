import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_app_task/items/models/model_item_data.dart';
import 'package:mini_app_task/items/state/state_single_item.dart';

final singleItemProvider = AsyncNotifierProvider.family<SingleItemController,
    SingleItemState, ItemData>(() => SingleItemController());

class SingleItemController
    extends FamilyAsyncNotifier<SingleItemState, ItemData> {
  SingleItemController() : super();

  @override
  FutureOr<SingleItemState> build(ItemData arg) async {
    return SingleItemState(
      isFavourite: arg.isFavourite,
      isExpanded: false,
    );
  }

  Future<void> setState(SingleItemState newState) async {
    if (state.value != null) {
      state = AsyncValue.data(state.value!.set(newState: newState));
    }
  }

  void toggleTile() async {
    await setState(
      SingleItemState(
        isExpanded: !(state.value?.isExpanded ?? true),
      ),
    );
  }

  void toggleFavourite() async {
    await setState(
      SingleItemState(
        isFavourite: !(state.value?.isFavourite ?? true),
      ),
    );

    //TODO:
    // Update shared preferences with new value
  }
}
