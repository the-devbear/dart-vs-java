class LazyExample {
  final value;
  late String description = _computeDescription();

  LazyExample() : value = 42;

  String _computeDescription() {
    print('Computing description...');
    return 'This is a lazily initialized description.';
  }
}

void main() {
  var example = LazyExample();

  // The description is computed and initialized the first time it is accessed
  print(example.description); // Output: Computing description...
  //         This is a lazily initialized description.

  // Subsequent accesses do not recompute the description
  print(
      example.description); // Output: This is a lazily initialized description.
}
