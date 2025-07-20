class SingleItemState {
  final bool? isExpanded;
  final bool? isFavourite;

  SingleItemState({
    this.isFavourite,
    this.isExpanded,
  });

  SingleItemState set({
    required SingleItemState newState,
  }) {
    return SingleItemState(
      isExpanded: newState.isExpanded ?? isExpanded,
      isFavourite: newState.isFavourite ?? isFavourite,
    );
  }

  SingleItemState clear() {
    return SingleItemState();
  }
}
