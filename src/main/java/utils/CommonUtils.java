package utils;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonUtils {

    public double getRoundDouble(double value, int count) {
        BigDecimal bd = new BigDecimal(Double.toString(value));
        bd = bd.setScale(count, RoundingMode.HALF_UP);
        value = bd.doubleValue();
        return value;
    }

    public String getTime() {
        SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");
        Date date = new Date(System.currentTimeMillis());
        return formatter.format(date);
    }
}
