package feature_2_extensions;

public class Example2 {

    public static void main(String[] args) {
        String example = "Hello, World!";

        System.out.println("Original: " + example);
        System.out.println("Reversed: " + StringExtensions.reverse(example));

        String palindrome = "racecar";
        System.out.println("Is " + palindrome + " a palindrome? " + StringExtensions.isPalindrome(palindrome));
        System.out.println("Original: " + palindrome);
        System.out.println("Reversed: " + StringExtensions.reverse(palindrome));
    }
}
