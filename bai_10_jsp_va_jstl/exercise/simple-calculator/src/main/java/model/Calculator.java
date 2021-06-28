package model;

public class Calculator {

    public static double calculate (double fOper, double sOper, String operator) {
        double result = 0;
        switch (operator) {
            case "+":
                result = fOper + sOper;
                break;
            case "-":
                result = fOper - sOper;
                break;
            case "*":
                result = fOper * sOper;
                break;
            case "/":
                if (sOper != 0) {
                    result = fOper / sOper;
                } else {
                    throw new ArithmeticException("Lỗi chia cho 0");
                }
        }
        return result;
    }
}
