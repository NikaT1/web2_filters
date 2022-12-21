package filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {

    private FilterConfig filterConfig;

    @Override
    public void destroy() {
        filterConfig = null;
    }

    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        filterConfig = fConfig;
        filterConfig.getServletContext().setAttribute("code", filterConfig.getInitParameter("code"));
    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        String code = (String) filterConfig.getServletContext().getAttribute("code");
        if (req.getSession().getAttribute("auth") != null || (req.getHeader("Authorization") != null && req.getHeader("Authorization").equals("Bearer " + code))) {
            chain.doFilter(request, response);
        } else {
            HttpServletResponse resp = (HttpServletResponse) response;
            resp.setStatus(401);
            RequestDispatcher dispatcher = filterConfig.getServletContext().getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);
        }
    }
}