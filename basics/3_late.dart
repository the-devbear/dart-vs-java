class Lazy {
  late final String name = someSuperExpensiveOperation();

  String someSuperExpensiveOperation() {
    print('Some expensive operation');
    return 'Max';
  }
}

class NotLazy {
  final String name = someSuperExpensiveOperation();

  static String someSuperExpensiveOperation() {
    print('Some expensive operation');
    return 'Max';
  }
}

class DatabaseConnection {
  late String connectionString;

  void initialize(String connectionString) {
    this.connectionString = connectionString;
  }

  void connect() {
    if (connectionString.isNotEmpty) {
      print('Connecting to $connectionString');
    } else {
      print('Connection string is empty');
    }
  }
}

void main(List<String> args) {
  print('Lazy');
  Lazy lazy1 = Lazy();
  Lazy lazy2 = Lazy();
  Lazy lazy3 = Lazy();
  print(lazy1.name);
  print(lazy1.name);

  print('Not lazy');
  NotLazy notLazy1 = NotLazy();
  NotLazy notLazy2 = NotLazy();
  NotLazy notLazy3 = NotLazy();
  print(notLazy1.name);
  print(notLazy1.name);

  DatabaseConnection db = DatabaseConnection();
  // db.connect();
  db.initialize('localhost:5432');
  db.connect();
  print(db.connectionString);
}
