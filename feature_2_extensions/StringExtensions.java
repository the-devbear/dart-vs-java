package feature_2_extensions;

public class StringExtensions {
    public static String reverse(String input) {
        return new StringBuilder(input).reverse().toString();
    }

    public static boolean isPalindrome(String input) {
        return input.equals(reverse(input));
    }
}
