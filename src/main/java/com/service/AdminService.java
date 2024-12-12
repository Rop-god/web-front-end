package com.service;

import com.entity.NewsItem;

import java.sql.Date;
import java.util.List;

public interface AdminService {
    public List<NewsItem> getAllNews();
    /*添加新闻*/
    public void addNews(String title, String content, Date publish_date);
    public void updateNews(int id, String title, String content, Date publish_date);
    public void deleteNews(int id);
}
