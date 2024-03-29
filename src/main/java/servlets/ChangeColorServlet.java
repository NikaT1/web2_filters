package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/changeColorServlet")
public class ChangeColorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Boolean> arrayList;
        if (session.getAttribute("color") != null) {
            arrayList = (List<Boolean>) session.getAttribute("color");
        } else arrayList = new ArrayList<>();
        if (req.getParameter("args") != null) {
            if (Integer.parseInt(String.valueOf(req.getParameter("args"))) == 1) {
                arrayList.add(true);
            } else arrayList.add(false);
            session.setAttribute("color", arrayList);
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {
            getServletContext().getRequestDispatcher("/error.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}