package com.filter;

import com.entity.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebFilter("/admin")
public class LoginFilter extends HttpFilter {
    private final List<String> excluds = List.of("/resources/html/login", "/login");

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        for (String e : excluds) {
            if (e.equals(req.getServletPath())){
                chain.doFilter(req, res);
                return;
            }
        }
        User user = (User) req.getSession().getAttribute("user");
        if (user != null) {
            chain.doFilter(req, res);
            return;
        }
        res.sendRedirect(req.getContextPath() + "/login");
    }
}
