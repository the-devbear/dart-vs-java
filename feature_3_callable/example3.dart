example3Usecase() {
  print('example3Usecase');
}

sealed class Usecase<T> {
  T call();
}

class Example3Usecase implements Usecase<void> {
  String call() {
    print('Example3Usecase');
    return 'Example3Usecase;';
  }
}

class ExampleRule {
  String call() {
    return 'ExampleRule';
  }
}

typedef JSON = Map<String, dynamic>;

void main(List<String> args) {
  // var test = ExampleRule();
  dynamic test = 0;
  Object test2 = new Object();

  test();

  print(test.runtimeType);
  print(test2.runtimeType);
}
