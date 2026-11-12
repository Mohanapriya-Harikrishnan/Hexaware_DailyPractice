public class PalindromeString {
   
    public static void main(String[] args) {

        String str = "MADAM";

        int L = 0;
        int R = str.length() - 1;

        boolean palindrome = true;

        while (L < R) {

            if (str.charAt(L) != str.charAt(R)) {

                palindrome = false;
                break;
            }

            L++;
            R--;
        }

        if (palindrome) {
            System.out.println("Palindrome");
        }
        else {
            System.out.println("Not a Palindrome");
        }
    }
}
    

