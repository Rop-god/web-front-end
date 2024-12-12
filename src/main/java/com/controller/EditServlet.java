package com.controller;

import com.entity.NewsItem;
import com.service.NewsServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/editNews")
public class EditServlet extends HttpServlet {
    private NewsServiceImpl newsService = new NewsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        NewsItem news = newsService.getNewsById(id);
        req.setAttribute("news", news);
        req.getRequestDispatcher("/resources/html/editNews.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        Date publishDate = new Date(System.currentTimeMillis());
        newsService.updateNews(id, title, content, publishDate);

        resp.sendRedirect(req.getContextPath() + "/admin");
    }
}
