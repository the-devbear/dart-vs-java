// 3 Arten der Typisierung in Dart
// 1. Explizite Typisierung
// 2. Implizite Typisierung
// 3. Dynamische Typisierung
void main(List<String> args) {
  // Explizite Typisierung
  String explicitString = 'Hello World';
  int explicitInt = 42;

  // Implizite Typisierung
  var implicitString = 'Hello World';
  print(implicitString.runtimeType); // String
  implicitString = "Hello Dart";

  final implicitInt = DateTime.now().hour;
  const implicitInt2 = 42;
  print(implicitInt.runtimeType); // int
  print(implicitInt2.runtimeType); // int

  // The final variable 'implicitInt' can only be set once.
  // Try making 'implicitInt' non-final
  // implicitInt = 43;
  // implicitInt2 = 43;

  // Dynamische Typisierung
  dynamic dynamicValue = 'Hello World';
  print(dynamicValue is String); // true
  print(dynamicValue is int); // false
  dynamicValue = 42;
  print(dynamicValue is String); // false
  print(dynamicValue is int); // true
}
