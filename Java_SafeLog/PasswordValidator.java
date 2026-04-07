import java.util.*;

public class PasswordValidator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean isValid = false;

        while (!isValid) {
            System.out.print("Create a password: ");
            String password = scanner.nextLine();
            
            String result = validatePassword(password);
            if (result.equals("Valid")) {
                System.out.println("Success! Your password is secure.");
                isValid = true;
            } else {
                System.out.println("Error: " + result);
            }
        }
    }

    public static String validatePassword(String pass) {
        if (pass.length() < 8) return "Too short";

        boolean hasUpper = false;
        boolean hasDigit = false;

        for (int i = 0; i < pass.length(); i++) {
            char c = pass.charAt(i);
            if (Character.isUpperCase(c)) hasUpper = true;
            if (Character.isDigit(c)) hasDigit = true;
        }

        if (!hasUpper) return "Missing an uppercase letter";
        if (!hasDigit) return "Missing a digit";
        
        return "Valid";
    }
}