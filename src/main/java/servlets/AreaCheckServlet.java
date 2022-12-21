package servlets;

import data.DataFromTable;
import utils.DataManager;
import utils.Validation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;


@WebServlet("/areaCheck")
public class AreaCheckServlet extends HttpServlet {

    private DataManager dataManager = new DataManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DataFromTable dataFromTable = dataManager.createData(req);
        if (dataFromTable == null) {
            getServletContext().getRequestDispatcher("/error.jsp").forward(req, resp);
            return;
        }
        HttpSession session = req.getSession();
        List<DataFromTable> arrayList;
        if (session.getAttribute("resultData") != null) {
            arrayList = (List<DataFromTable>) session.getAttribute("resultData");
        } else arrayList = new ArrayList<>();
        arrayList.add(dataFromTable);
        session.setAttribute("resultData", arrayList);
        req.getRequestDispatcher("/table.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getNamedDispatcher("/index.jsp").forward(req, resp);
    }

}