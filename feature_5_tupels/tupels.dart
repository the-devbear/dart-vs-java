class User {
  String name;
  int age;

  User({required this.name, this.age = 18});
}

(String, int) unnamedTuple() {
  return ('key', 42);
}

({String key, dynamic value}) namedTuple() {
  return (key: 'key', value: 42);
}

void main(List<String> args) {
  final user = User(name: 'Max Mustermann');
  print('Name: ${user.name}, Age: ${user.age}');

  final unnamed = unnamedTuple();
  print('Key: ${unnamed.$1}, Value: ${unnamed.$2}');

  final named = namedTuple();
  print('Key: ${named.key}, Value: ${named.value}');

  final Map<String, dynamic> map = {
    'key': 'key',
    'value': 42,
    'otherValue': 44.5,
    'andAnotherValue': User(name: 'Max', age: 18)
  };

  print('Map: $map');
}
