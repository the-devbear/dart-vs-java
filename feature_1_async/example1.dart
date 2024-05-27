Future<String> getHello() async {
  print('waiting for data');
  // Das könnte auch ein HTTP Request sein
  final response = await Future.delayed(Duration(seconds: 2), () {
    print('data received');
    return 'Hello World!';
  });
  return response;
}

void main(List<String> args) async {
  final value = await getHello();
  print('got value $value');
}
