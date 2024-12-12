package com.controller;

import com.entity.NewsItem;
import com.util.DataBaseUtils;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/newsDetails")
public class NewDetailsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int newsId = Integer.parseInt(request.getParameter("uid"));
        NewsItem newsItem = DataBaseUtils.getNewsById(newsId);
        request.setAttribute("newsItem", newsItem);
        request.getRequestDispatcher("/WEB-INF/jsp/newsDetails.jsp").forward(request, response);
    }
}
