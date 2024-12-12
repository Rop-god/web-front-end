package com.controller;

import com.service.NewsServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/addNews")
public class AddNews extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        // 处理日期为当前日期或其他逻辑
        Date publish_date = new Date(System.currentTimeMillis());
        NewsServiceImpl impl = new NewsServiceImpl();
        impl.addNews(title, content, publish_date);
        resp.sendRedirect(req.getContextPath() + "/admin");
        }
}

