import 'string_extensions.dart';

void main(List<String> args) {
  String example = 'Hello World!';

  print('Original: $example');
  print('Reversed: ${example.reverse()}');

  String palindrome = 'racecar';
  print('Is $palindrome a palindrome? ${palindrome.isPalindrome()}');
  print('Original: $palindrome');
  print('Reversed: ${palindrome.reverse()}');
}
