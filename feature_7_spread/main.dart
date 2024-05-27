void main(List<String> args) {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, 5, 6];

  List<int> combinedList = [...list1, ...list2];

  print('combined List: $combinedList'); // Output: [1, 2, 3, 4, 5, 6]

  // Using the spread operator to add elements of list1 into a new list with additional elements
  List<int> newList = [0, ...list1, 7, 8];

  // Printing the new list
  print('new list: $newList'); // Output: [0, 1, 2, 3, 7, 8]

  // Using the null-aware spread operator
  List<int>? nullableList;
  List<int> listWithNullCheck = [10, 11, ...?nullableList];

  // Printing the list with null-aware spread operator
  print('list with null check: $listWithNullCheck'); // Output: [10, 11]

  Map<String, int> map1 = {'a': 1, 'b': 2, 'c': 3};
  Map<String, int> map2 = {'d': 4, 'e': 5};

  Map<String, int> combinedMap = {...map1, ...map2};

  // Ausgeben der kombinierten Map
  print(
    'combined Map: $combinedMap',
  ); // Ausgabe: {a: 1, b: 2, c: 3, d: 4, e: 5}

  // Verwenden des nullsicheren Spread-Operators
  Map<String, int>? nullableMap;
  Map<String, int> mapWithNullCheck = {'h': 8, ...?nullableMap};

  Map<String, int> overWriteMap = {'a': 11, 'b': 22};
  Map<String, int> combinedMapWithOverwrite = {...map1, ...overWriteMap};

  print(combinedMapWithOverwrite); // Ausgabe: {a: 11, b: 22}

  // Ausgeben der Map mit nullsicherem Spread-Operator
  print(mapWithNullCheck); // Ausgabe: {h: 8}
}
