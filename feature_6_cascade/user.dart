class User {
  String _name;
  int _age;
  int _height;
  double _weight;

  User({
    required String name,
    int age = 18,
  })  : _name = name,
        _age = age,
        _height = 180,
        _weight = 80;

  User.withHeight({
    required String name,
    int age = 18,
    required int height,
  })  : _name = name,
        _age = age,
        _height = height,
        _weight = 80;

  set height(int height) => _height = height;
  set weight(double weight) => _weight = weight;

  @override
  String toString() {
    return 'User{name: $_name, age: $_age, height: $_height, weight: $_weight}';
  }

  void printUser() {
    print(this);
  }
}
