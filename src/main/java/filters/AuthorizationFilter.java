package filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

public class AuthorizationFilter implements Filter {

    private FilterConfig filterConfig;

    @Override
    public void destroy()
    {
        filterConfig = null;
    }

    @Override
    public void init(FilterConfig fConfig) throws ServletException
    {
        filterConfig = fConfig;
    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest)request;
        if (req.getHeader("Authorization") != null && req.getHeader("Authorization").equals("Bearer hh")){
            chain.doFilter(request, response);
        } else {
            HttpServletResponse resp = (HttpServletResponse)response;
            resp.setStatus(401);
            RequestDispatcher dispatcher = filterConfig.getServletContext().getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);
        }
    }
}