package utils;

import data.DataFromTable;

import javax.servlet.http.HttpServletRequest;

public class DataManager {

    private Validation validation = new Validation();
    private CommonUtils commonUtils = new CommonUtils();

    private boolean rectangle(double x, double y, double r) {
        return x >= 0 && x <= r && y >= 0 && y <= r;
    }

    private boolean triangle(double x, double y, double r) {
        return x >= 0 && x <= r && y <= 0 && y >= x / 2 - r / 2;
    }

    private boolean circle(double x, double y, double r) {
        return x <= 0 && x >= -r && y >= 0 && y * y <= -x * x + r * r;
    }

    public String getAnswer(double x, double y, double r) {
        return (rectangle(x, y, r) || triangle(x, y, r) || circle(x, y, r)) ? "да" : "нет";
    }

    public DataFromTable createData(HttpServletRequest req) {
        long start = System.nanoTime();
        boolean isValid;
        String answer, param_x, param_y, param_r;
        if (req.getParameter("x") == null || req.getParameter("y") == null || req.getParameter("r") == null) {
            return null;
        }
        param_x = req.getParameter("x").replace(",", ".");
        param_y = req.getParameter("y").replace(",", ".");
        param_r = req.getParameter("r").replace(",", ".");
        double x, y, r;
        if (!validation.checkAll(param_x, param_y, param_r)) {
            return null;
        }
        isValid = true;
        x = Double.parseDouble(param_x);
        y = Double.parseDouble(param_y);
        r = Double.parseDouble(param_r);
        answer = getAnswer(x, y, r);
        long finish = System.nanoTime();
        double scriptTime = ((finish - start) * 10e-6);
        scriptTime = commonUtils.getRoundDouble(scriptTime, 3);
        x = commonUtils.getRoundDouble(x, 3);
        y = commonUtils.getRoundDouble(y, 3);
        String time = commonUtils.getTime();
        return new DataFromTable(x, y, r, time, answer, isValid, scriptTime);
    }

}
