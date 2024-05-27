import 'user.dart';

void main(List<String> args) {
  User user1 = User(name: 'Max');

  user1
    ..printUser()
    ..height = 190
    ..weight = 90
    ..printUser();

  final intList = <int>[];

  intList
    ..add(1)
    ..add(2)
    ..add(3);
}
