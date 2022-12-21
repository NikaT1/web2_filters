package utils;

import java.util.Arrays;
import java.util.List;

public class Validation {
    private boolean checkX(String x) {
        final double MAX = 5;
        final double MIN = -5;
        if (x.equals("")) return false;
        try {
            double doubleX = Double.parseDouble(x);
            return (doubleX > MIN && doubleX < MAX);
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private boolean checkY(String y) {
        try {
            double doubleY = Double.parseDouble(y);
            return (doubleY >= -2 && doubleY <= 2);
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private boolean checkR(String r) {
        List<Double> yArray = Arrays.asList(1.0, 1.5, 2.0, 2.5, 3.0);
        try {
            return yArray.contains(Double.parseDouble(r));
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public boolean checkAll(String x, String y, String r) {
        return checkR(r) && checkY(y) && checkX(x);
    }

}
