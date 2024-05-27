extension StringExtensions on String {
  reverse() {
    return this.split('').reversed.join('');
  }

  isPalindrome() {
    return this == this.split('').reversed.join('');
  }
}
