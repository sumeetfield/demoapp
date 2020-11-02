class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;
  Item({this.expandedValue, this.headerValue, this.isExpanded = false});
}

List<Item> generateItem(int numberOfItems) {
  return List.generate(numberOfItems + 1, (index) {
    return Item(
        expandedValue: 'Sub-Category $index', headerValue: 'Category $index');
  });
}
