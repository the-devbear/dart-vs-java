class Vector2D {
  double x, y;

  Vector2D(this.x, this.y);

  Vector2D operator +(Vector2D v) {
    return Vector2D(x + v.x, y + v.y);
  }

  Vector2D operator -(Vector2D v) {
    return Vector2D(x - v.x, y - v.y);
  }

  @override
  String toString() {
    return 'Vector2D{x: $x, y: $y}';
  }
}

class User {
  String name;
  int age;

  User({required this.name, this.age = 18});

  // In Java würden wir equals() überschreiben.
  bool operator ==(Object other) =>
      other is User && name == other.name && age == other.age;

  @override
  String toString() {
    return 'User{name: $name, age: $age}';
  }
}

void main(List<String> args) {
  final v1 = Vector2D(1, 2);
  final v2 = Vector2D(2, 3);
  final v3 = v1 + v2;
  print(v3);
  print('v3 == Vector2D(3, 5): ${v3 == Vector2D(3, 5)}');

  final user1 = User(name: 'Max');
  final user2 = User(name: 'Max', age: 18);

  print(user1);
  print(user2);
  print(user1 == user2);
}
