package com.controller;

import com.entity.NewsItem;
import com.util.DataBaseUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<NewsItem> newsLists = DataBaseUtils.getAllNews();
        req.setAttribute("newsLists", newsLists);
        req.getRequestDispatcher("/resources/html/admin.jsp").forward(req, resp);
    }

}
