void main(List<String> args) {
  String? nullableString;

  // Fehler: Könnte null sein.
  // nullableString.toUpperCase();
  final upperCaseString = nullableString?.toUpperCase();

  print('isNull: ${upperCaseString == null}');

  // Wir können nullableString! verwenden, um Dart zu sagen,
  // dass wir sicher sind, dass nullableString nicht null ist.
  // final upperCaseString = nullableString!.toUpperCase();

  final nullableExample = NullableExample();
  if (nullableExample.nullableString != null) {
    // Fehler: Ob wohl wir gerade geprüft haben, dass nullableString nicht null ist,
    // nullableString.toUpperCase();
    final bruderVertrauMirDerIstNichtNull =
        nullableExample.nullableString!.toUpperCase();
    print('bruderVertrauMirDerIstNichtNull: $bruderVertrauMirDerIstNichtNull');
  }

  // Wenn nullableString null ist, wird 'Hello World' zugewiesen.
  // Ansonsten bleibt der Wert unverändert.
  nullableString ??= 'Hello World';

  final String upperCase = nullableString.toUpperCase();
  print('upperCase: $upperCase');
}

class NullableExample {
  String? nullableString;
}
